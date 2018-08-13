//
//  SampleData.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/08/08.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import Foundation

final class SampleData {
    static func generateBeerData() -> [Beer] {
        return [
            Beer(name: "Buzz", tagline: "A Real Bitter Experience.", description: "A light, crisp and bitter IPA brewed with English and American hops. A small batch brewed only once.", imageUrl: "buzzImage"),
            Beer(name: "Trashy Blonde", tagline: "You Know You Shouldn't", description: "A titillating, neurotic, peroxide punk of a Pale Ale. Combining attitude, style, substance, and a little bit of low self esteem for good measure; what would your mother say? The seductive lure of the sassy passion fruit hop proves too much to resist. All that is even before we get onto the fact that there are no additives, preservatives, pasteurization or strings attached. All wrapped up with the customary BrewDog bite and imaginative twist.", imageUrl: "trashyBlondeImage"),
            Beer(name: "Berliner Weisse With Yuzu - B-Sides", tagline: "Japanese Citrus Berliner Weisse.", description: "Japanese citrus fruit intensifies the sour nature of this German classic.", imageUrl: "berlinerImage"),
            Beer(name: "Pilsen Lager", tagline: "Unleash the Yeast Series.", description: "Our Unleash the Yeast series was an epic experiment into the differences in aroma and flavour provided by switching up your yeast. We brewed up a wort with a light caramel note and some toasty biscuit flavour, and hopped it with Amarillo and Centennial for a citrusy bitterness. Everything else is down to the yeast. Pilsner yeast ferments with no fruity esters or spicy phenols, although it can add a hint of butterscotch.", imageUrl: "pilsenLagerImage")
        ]
    }
}


