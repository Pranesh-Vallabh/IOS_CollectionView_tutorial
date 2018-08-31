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
    
    override func setUp() {
        super.setUp()
        
        let app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {

        super.tearDown()
    }
    
    func testGivenWhenFirstCollectionViewCellIsPressedThenBeerDetailScreenAppearsWithTheCorrectBeerDetails() {
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

}
