//
//  BeerListViewModel2Tests.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/08/22.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import XCTest
import Cuckoo
import BeerPod
@testable import SwiftCollectionView

class BeerListViewModelTests: XCTestCase {
  
    let mockBeerListView: MockBeerListViewable = MockBeerListViewable()
    let mockBeerRepository: MockBeerDataGetable = MockBeerDataGetable()
    lazy var systemUnderTests = {
        BeerListViewModel(beerListView: mockBeerListView)
    }()

    var globalAsyncExpectation: XCTestExpectation?
    var mainAsyncExpectation: XCTestExpectation?
    
    override func setUp() {
        super.setUp()
        globalAsyncExpectation = expectation(description: "Global async")
        mainAsyncExpectation = expectation(description: "Main async")
    }
    
    override func tearDown() {
        globalAsyncExpectation = nil
        mainAsyncExpectation = nil
        super.tearDown()
    }
    
    func testGivenAViewAndRepoWhenGetBeerDataIsCalledItReturnsSuccessfully() {
        Resolver.reset()
        stub(mockBeerRepository){ (mock) in
            when(mock.fetchBeerData(any())).then { completion in
                completion(SampleData.generateBeerData(),nil)
                self.globalAsyncExpectation?.fulfill()
            }
        }
        setupStubsForBeerListViewable()
        setupDependencyContainerForBeerDataGetable()
        
        systemUnderTests.getBeerData()
        wait(for: [globalAsyncExpectation!, mainAsyncExpectation!], timeout: 20)
        
        verify(mockBeerRepository, times(1)).fetchBeerData(any())
        verify(mockBeerListView, times(1)).showBeerList(beers: equal(to: SampleData.generateBeerData()))
        verify(mockBeerListView, never()).showErrorMessage(errorMessage: any())
    }
    
    func testGivenAViewAndRepoWhenGetBeerDataIsCalledItReturnsAnError() {
        Resolver.reset()
        let error = NSError(domain: "", code: 200, userInfo: [NSLocalizedDescriptionKey: "Error message"])
        stub(mockBeerRepository){ (mock) in
            when(mock.fetchBeerData(any())).then { completion in
                completion(nil,error)
                self.globalAsyncExpectation?.fulfill()
            }
        }
        setupStubsForBeerListViewable()
        setupDependencyContainerForBeerDataGetable()
        
        systemUnderTests.getBeerData()
        wait(for: [globalAsyncExpectation!, mainAsyncExpectation!], timeout: 20)
        
        verify(mockBeerRepository, times(1)).fetchBeerData(any())
        verify(mockBeerListView, times(1)).showErrorMessage(errorMessage: equal(to: error.localizedDescription))
        verify(mockBeerListView, never()).showBeerList(beers: any())
    }
    
    func setupStubsForBeerListViewable() {
        stub(mockBeerListView){ (mock) in
            when(mock.getBeerData()).thenDoNothing()
            when(mock.showBeerList(beers: any())).then({ _ in
                self.mainAsyncExpectation?.fulfill()
            })
            when(mock.showErrorMessage(errorMessage: any())).then{ _ in
                self.mainAsyncExpectation?.fulfill()
            }
        }
    }
    
    func setupDependencyContainerForBeerDataGetable() {
        let container = DepedencyContainer.instance
        container.register(dependecy: BeerDataGetable.self, implementation: {
            return self.mockBeerRepository
        })
    }
}




