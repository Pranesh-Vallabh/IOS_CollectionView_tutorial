//
//  SizeClassExtension.swift
//  SwiftCollectionView
//
//  Created by Pranesh on 2018/09/11.
//  Copyright © 2018 Pranesh. All rights reserved.
//

import UIKit

extension UIView: Sizeable {
    
    func isSizeClassWidthRegular() -> Bool {
        return self.traitCollection.horizontalSizeClass == .regular
    }
    
    func isSizeClassHeightRegular() -> Bool {
        return self.traitCollection.verticalSizeClass == .compact
    }
}
