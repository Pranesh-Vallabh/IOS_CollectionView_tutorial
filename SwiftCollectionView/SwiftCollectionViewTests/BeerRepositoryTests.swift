//
//  BeerRepositoryTests.swift
//  SwiftCollectionViewTests
//
//  Created by Pranesh on 2018/08/27.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import XCTest
import Cuckoo
import BeerPod
import Alamofire

@testable import SwiftCollectionView

class BeerRepositoryTests: XCTestCase {
    
    var systemUnderTest: BeerDataGetable?
    var mockNetworking = MockNetworkable()
    
    override func setUp() {
        super.setUp()
        systemUnderTest = BeerRepository()
    }
    
    override func tearDown() {
        systemUnderTest = nil
        super.tearDown()
    }
    
    func testGivenASuccesfulDataResponseFromNetworkableWhenGivenFetchBeerDataIsCalledItReturnsSuccessfullyAndCorrectBeerObject() {
        let expectedBeerJsonObject = self.setupMockJsonObjectFromSetupMockSuccessDataForPunkApi()
        let successfulExpectation = expectation(description: "Successful data response with the correct beer object")
        stub(mockNetworking){ (mock) in
            when(mock.request(any())).then{
                completion in completion(self.setupMockSuccessDataResponseForPunkApi())
                successfulExpectation.fulfill()
            }
        }
        setupDependencyContainerForNetworkable()
        systemUnderTest?.fetchBeerData{ (beers, error) in
            XCTAssertNil(error, "Expected a nil error object")
            XCTAssertNotNil(beers, "Expected a non-nil beers object")
            XCTAssertNotNil(expectedBeerJsonObject, "Expected a non-nil expectedBeerJsonObject")
            XCTAssertEqual(beers, expectedBeerJsonObject)
        }
        wait(for: [successfulExpectation], timeout: 10)
        verify(mockNetworking, times(1)).request(any())
    }
    
    func testGivenAFailureDataResponseFromNetworkableWhenGivenFetechBeerDataIsCalledItReturnsErrorFromSetupMockErrorMessage() {
        let failureExpectation = expectation(description: "Failure data response")
        stub(mockNetworking){ (mock) in
            when(mock.request(any())).then{ completion in
                completion(self.setupMockFailureDataReposneForPunkApi())
                failureExpectation.fulfill()
            }
        }
        setupDependencyContainerForNetworkable()
        systemUnderTest?.fetchBeerData{(beers, error) in
            XCTAssertNotNil(error, "Expect a non-nil error object")
            XCTAssertNil(beers, "Expected a nil beers object")
            XCTAssertEqual(self.setupMockErrorMessage(), error?.localizedDescription)
        }
        wait(for: [failureExpectation], timeout: 10)
        verify(mockNetworking, times(1)).request(any())
    }
    
    func testGivenASuccessDataResponseWithJsonErrorFromNetworkableWhenGivenFetechBeerDataIsCalledItReturnsAJsonError() {
        let jsonErrorExpectation = expectation(description: "Json error data response")
        stub(mockNetworking){ (mock) in
            when(mock.request(any())).then{ completion in
                completion(self.setupMockJsonErrorDataResponseForPunkApi())
                jsonErrorExpectation.fulfill()
            }
        }
        setupDependencyContainerForNetworkable()
        systemUnderTest?.fetchBeerData{(beers, error) in
            XCTAssertNotNil(error, "Expected a non-nil error object")
            XCTAssertNil(beers, "Expected a nil beers object")
        }
        wait(for: [jsonErrorExpectation], timeout: 10)
        verify(mockNetworking, times(1)).request(any())
    }
    
    func testGivenANilDataResponseFromNetworkableWhenGivenFetechBeerDataIsCalledItReturnsNothing() {
        let nilDataResponseExpectation = expectation(description: "Nil data response")
        stub(mockNetworking){ (mock) in
            when(mock.request(any())).then{ completion in
                completion(self.setupMockNilDataResponseForPunkApi())
                nilDataResponseExpectation.fulfill()
            }
        }
        setupDependencyContainerForNetworkable()
        systemUnderTest?.fetchBeerData{(beers, error) in
            XCTAssertNil(error, "Expected a nil error object")
            XCTAssertNil(beers, "Expected a nil beers object")
        }
        wait(for: [nilDataResponseExpectation], timeout: 10)
        verify(mockNetworking, times(1)).request(any())
    }
    
    func testGivenASuccessDataResponseWithNilDaaFromNetworkableWhenGivenFetechBeerDataIsCalledItReturnsNothing() {
        let nilDataExpectation = expectation(description: "Nil data inside data response")
        stub(mockNetworking){ (mock) in
            when(mock.request(any())).then{ completion in
                completion(self.setupMockSuccessDataResponseWithNilDataFieldForPunkApi())
                nilDataExpectation.fulfill()
            }
        }
        setupDependencyContainerForNetworkable()
        systemUnderTest?.fetchBeerData{(beers, error) in
            XCTAssertNil(error, "Expected a nil error object")
            XCTAssertNil(beers, "Expected a nil beers object")
        }
        wait(for: [nilDataExpectation], timeout: 10)
        verify(mockNetworking, times(1)).request(any())
    }
    
    func setupDependencyContainerForNetworkable() {
        let container = DepedencyContainer.instance
        container.register(dependecy: Networkable.self, implementation: {
            return self.mockNetworking
        })
    }
    
    func setupMockNilDataResponseForPunkApi() -> DataResponse<Any>? {
        return nil
    }
    
    func setupMockSuccessDataResponseWithNilDataFieldForPunkApi() -> DataResponse<Any> {
        return DataResponse<Any>(request: nil,
                                 response: setupMockHttpUrlResponseForPunkApi(),
                                 data: nil,
                                 result: setupMockSucessResultForPunkApi())
    }
    
    func setupMockSuccessDataResponseForPunkApi() -> DataResponse<Any> {
        return DataResponse<Any>(request: nil,
                                 response: setupMockHttpUrlResponseForPunkApi(),
                                 data: setupMockSuccessDataForPunkApi(),
                                 result: setupMockSucessResultForPunkApi())
    }
    
    func setupMockJsonErrorDataResponseForPunkApi() -> DataResponse<Any> {
        return DataResponse<Any>(request: nil,
                                 response: setupMockHttpUrlResponseForPunkApi(),
                                 data: setupMockSuccessDataWithAJsonErrorForPunkApi(),
                                 result: setupMockSucessResultForPunkApi())
    }
    
    func setupMockFailureDataReposneForPunkApi() -> DataResponse<Any> {
        return DataResponse<Any>(request: nil,
                                 response: setupMockHttpUrlResponseForPunkApi(),
                                 data: nil,
                                 result: setupMockFailureResultForPunkApi())
    }
    
    func setupMockHttpUrlResponseForPunkApi() -> HTTPURLResponse? {
        ApiURL.setupApiUrl(with: Constants.punkApiUrl)
        guard let url = URL(string: ApiURL.getApiUrl()) else {
            XCTFail("Cannot convert Constants.ApiUrl string to URL")
            return nil
        }
        return HTTPURLResponse(url: url, statusCode: 202, httpVersion: nil, headerFields: nil)
    }
    
    func setupMockSucessResultForPunkApi() -> Result<Any> {
        return Result<Any>.success("Successful Result")
    }
    
    func setupMockFailureResultForPunkApi() -> Result<Any> {
        let error =  NSError(domain: "", code: 200, userInfo: [NSLocalizedDescriptionKey: setupMockErrorMessage()])
        return Result<Any>.failure(error)
    }
    
    func setupMockErrorMessage() -> String {
        return "Error Message"
    }
    
    func setupMockJsonObjectFromSetupMockSuccessDataForPunkApi() -> [Beer]? {
        guard let beerData = setupMockSuccessDataForPunkApi() else {
            XCTFail("Expect a non-nil beerData object")
            return nil
        }
        
        var beers = [Beer]()
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            beers = try decoder.decode([Beer].self, from: beerData)
            return beers
        } catch let jsonError {
            XCTFail(jsonError.localizedDescription)
            return nil
        }
    }
    
    func setupMockSuccessDataForPunkApi() -> Data? {
        let correctBeerString = "[{\"id\":1,\"name\":\"Buzz\",\"tagline\":\"A Real Bitter Experience.\",\"first_brewed\":\"09/2007\",\"description\":\"A light, crisp and bitter IPA brewed with English and American hops. A small batch brewed only once.\",\"image_url\":\"https://images.punkapi.com/v2/keg.png\",\"abv\":4.5,\"ibu\":60,\"target_fg\":1010,\"target_og\":1044,\"ebc\":20,\"srm\":10,\"ph\":4.4,\"attenuation_level\":75,\"volume\":{\"value\":20,\"unit\":\"liters\"},\"boil_volume\":{\"value\":25,\"unit\":\"liters\"},\"method\":{\"mash_temp\":[{\"temp\":{\"value\":64,\"unit\":\"celsius\"},\"duration\":75}],\"fermentation\":{\"temp\":{\"value\":19,\"unit\":\"celsius\"}},\"twist\":null},\"ingredients\":{\"malt\":[{\"name\":\"Maris Otter Extra Pale\",\"amount\":{\"value\":3.3,\"unit\":\"kilograms\"}},{\"name\":\"Caramalt\",\"amount\":{\"value\":0.2,\"unit\":\"kilograms\"}},{\"name\":\"Munich\",\"amount\":{\"value\":0.4,\"unit\":\"kilograms\"}}],\"hops\":[{\"name\":\"Fuggles\",\"amount\":{\"value\":25,\"unit\":\"grams\"},\"add\":\"start\",\"attribute\":\"bitter\"},{\"name\":\"First Gold\",\"amount\":{\"value\":25,\"unit\":\"grams\"},\"add\":\"start\",\"attribute\":\"bitter\"},{\"name\":\"Fuggles\",\"amount\":{\"value\":37.5,\"unit\":\"grams\"},\"add\":\"middle\",\"attribute\":\"flavour\"},{\"name\":\"First Gold\",\"amount\":{\"value\":37.5,\"unit\":\"grams\"},\"add\":\"middle\",\"attribute\":\"flavour\"},{\"name\":\"Cascade\",\"amount\":{\"value\":37.5,\"unit\":\"grams\"},\"add\":\"end\",\"attribute\":\"flavour\"}],\"yeast\":\"Wyeast 1056 - American Ale™\"},\"food_pairing\":[\"Spicy chicken tikka masala\",\"Grilled chicken quesadilla\",\"Caramel toffee cake\"],\"brewers_tips\":\"The earthy and floral aromas from the hops can be overpowering. Drop a little Cascade in at the end of the boil to lift the profile with a bit of citrus.\",\"contributed_by\":\"Sam Mason <samjbmason>\"}]"
        
        let correctBeerData = correctBeerString.data(using: .utf8)
        return correctBeerData
    }
    
    func setupMockSuccessDataWithAJsonErrorForPunkApi() -> Data? {
        let jsonErrorBeerString = "{\"id\":1,\"name\":\"Buzz\",\"tagline\":\"A Real Bitter Experience.\",\"first_brewed\":\"09/2007\",\"description\":\"A light, crisp and bitter IPA brewed with English and American hops. A small batch brewed only once.\",\"image_url\":\"https://images.punkapi.com/v2/keg.png\",\"abv\":4.5,\"ibu\":60,\"target_fg\":1010,\"target_og\":1044,\"ebc\":20,\"srm\":10,\"ph\":4.4,\"attenuation_level\":75,\"volume\":{\"value\":20,\"unit\":\"liters\"},\"boil_volume\":{\"value\":25,\"unit\":\"liters\"},\"method\":{\"mash_temp\":[{\"temp\":{\"value\":64,\"unit\":\"celsius\"},\"duration\":75}],\"fermentation\":{\"temp\":{\"value\":19,\"unit\":\"celsius\"}},\"twist\":null},\"ingredients\":{\"malt\":[{\"name\":\"Maris Otter Extra Pale\",\"amount\":{\"value\":3.3,\"unit\":\"kilograms\"}},{\"name\":\"Caramalt\",\"amount\":{\"value\":0.2,\"unit\":\"kilograms\"}},{\"name\":\"Munich\",\"amount\":{\"value\":0.4,\"unit\":\"kilograms\"}}],\"hops\":[{\"name\":\"Fuggles\",\"amount\":{\"value\":25,\"unit\":\"grams\"},\"add\":\"start\",\"attribute\":\"bitter\"},{\"name\":\"First Gold\",\"amount\":{\"value\":25,\"unit\":\"grams\"},\"add\":\"start\",\"attribute\":\"bitter\"},{\"name\":\"Fuggles\",\"amount\":{\"value\":37.5,\"unit\":\"grams\"},\"add\":\"middle\",\"attribute\":\"flavour\"},{\"name\":\"First Gold\",\"amount\":{\"value\":37.5,\"unit\":\"grams\"},\"add\":\"middle\",\"attribute\":\"flavour\"},{\"name\":\"Cascade\",\"amount\":{\"value\":37.5,\"unit\":\"grams\"},\"add\":\"end\",\"attribute\":\"flavour\"}],\"yeast\":\"Wyeast 1056 - American Ale™\"},\"food_pairing\":[\"Spicy chicken tikka masala\",\"Grilled chicken quesadilla\",\"Caramel toffee cake\"],\"brewers_tips\":\"The earthy and floral aromas from the hops can be overpowering. Drop a little Cascade in at the end of the boil to lift the profile with a bit of citrus.\",\"contributed_by\":\"Sam Mason <samjbmason>\"}]"
        
        let jsonErrorBeerData = jsonErrorBeerString.data(using: .utf8)
        return jsonErrorBeerData
    }
}
