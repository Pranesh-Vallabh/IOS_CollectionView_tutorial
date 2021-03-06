//
//  SwiftCollectionViewUITests.swift
//  SwiftCollectionViewUITests
//
//  Created by Pranesh on 2018/08/31.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import XCTest
import ApiPod

class SwiftCollectionViewUITests: XCTestCase {
    
    let dynamicStubs = HTTPDynamicStubs()
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        dynamicStubs.tearDown()
        super.tearDown()
    }
    
    func testGivenWhenFirstCollectionViewCellIsPressedThenBeerDetailScreenAppearsWithTheCorrectBeerDetails() {
        dynamicStubs.setupStub(url: "api/feed", filename: "successfulJSON", method: .GET)
        dynamicStubs.startServer()
        launchAppForUITesting(withAdditionalInfo: setupLaunchEnvironmentIsMockUrl(with: "/successBeers"))
        let app = XCUIApplication()
        
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
        dynamicStubs.setupStub(url: "api/feed", filename: "successfulJSON", method: .GET)
        dynamicStubs.startServer()
        launchAppForUITesting(withAdditionalInfo: setupLaunchEnvironmentIsMockUrl(with: "/successBeers"))
        let app = XCUIApplication()
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
 
    func testGivenAErrorJsonObjectWhenBeerListScreenLoadsThenNoCollectionViewCellsShouldBeDisplayed() {
        dynamicStubs.setupStub(url: "api/feed", filename: "errorJSONFormat", method: .GET)
        dynamicStubs.startServer()
        launchAppForUITesting(withAdditionalInfo: setupLaunchEnvironmentIsMockUrl(with: "/errorBeers"))
        let app = XCUIApplication()

        let beerListCollectionView = app.collectionViews[AccessibilityLabel.beerListCollectionView]
        XCTAssertNotNil(beerListCollectionView)
        XCTAssertEqual(beerListCollectionView.cells.count, 0)
    }
    
    func setupLaunchEnvironmentIsMockUrl(with url: String) -> [String:String] {
        return [LaunchEnvironmentKey.MockUrl.rawValue: "http://localhost:8080/api/feed"]
        //return [LaunchEnvironmentKey.IsMockUrl.rawValue: "http://localhost:1236" + url]
    }
    
}
