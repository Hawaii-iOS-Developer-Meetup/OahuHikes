//
//  UIImage+AssetIdentifier.swift
//  MyStudio
//
//  Created by adam smith on 4/5/17.
//  Copyright © 2017 transeosolutions. All rights reserved.
//

import UIKit

// Used to create images with identifiers from the asset catalog.
extension UIImage {
    
    enum AssetIdentifier: String {
        case diamondhead, stairway
    }
    
    convenience init!(assetIdentifier: AssetIdentifier) {
        self.init(named: assetIdentifier.rawValue)
    }
}
