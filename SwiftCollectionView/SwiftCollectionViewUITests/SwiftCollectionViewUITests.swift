//
//  SwiftCollectionViewUITests.swift
//  SwiftCollectionViewUITests
//
//  Created by Pranesh on 2018/08/31.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import XCTest
import Alamofire
import Cuckoo

class SwiftCollectionViewUITests: XCTestCase {
    var app: XCUIApplication?
    
    override func setUp() {
        super.setUp()
        
        app = XCUIApplication()
        continueAfterFailure = false
        app?.launch()
    }
    
    override func tearDown() {
        app = nil
        super.tearDown()
    }
    
    func testGivenWhenFirstCollectionViewCellIsPressedThenBeerDetailScreenAppearsWithTheCorrectBeerDetails() {
        guard let app = app else {
            XCTFail("Expected a non-nil app")
            return
        }
        let beerListCollectionView = app.collectionViews[AccessibilityLabel.beerListCollectionView]
        XCTAssertNotNil(beerListCollectionView)
        
        let firstCellFromBeerListCollectionView = beerListCollectionView.cells.element(boundBy: 0)
        XCTAssertNotNil(firstCellFromBeerListCollectionView)
        firstCellFromBeerListCollectionView.tap()
        
        XCTAssertEqual(app.staticTexts[AccessibilityIdentifier.Name.rawValue].label, "Buzz")
        XCTAssertEqual(app.staticTexts[AccessibilityIdentifier.Description.rawValue].label, "A light, crisp and bitter IPA brewed with English and American hops. A small batch brewed only once.")
        XCTAssertEqual(app.staticTexts[AccessibilityIdentifier.TagLine.rawValue].label,"A Real Bitter Experience.")
        XCTAssert(app.images[AccessibilityLabel.beerImageView].exists)
    }
    
    func testGivenABeerDetailScreenWhenBeerDetailScreenBackButtonIsPressedThenBeerListScreenAppears() {
        guard let app = app else {
            XCTFail("Expected a non-nil app")
            return
        }
        XCTAssert(app.navigationBars[LocalizedString.listTitle].exists)
        
        let beerListCollectionView = app.collectionViews[AccessibilityLabel.beerListCollectionView]
        XCTAssertNotNil(beerListCollectionView)
        let firstCellFromBeerListCollectionView = beerListCollectionView.cells.element(boundBy: 0)
        XCTAssertNotNil(firstCellFromBeerListCollectionView)
        firstCellFromBeerListCollectionView.tap()
        
        XCTAssertEqual(app.staticTexts[AccessibilityIdentifier.Name.rawValue].label, "Buzz")
        app.navigationBars["SwiftCollectionView.BeerDetailView"].buttons["List of Beers"].tap()
        
        XCTAssert(app.navigationBars[LocalizedString.listTitle].exists)
    }
}
