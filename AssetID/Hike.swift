//
//  Hike.swift
//  OahuHikes
//
//  Created by adam smith on 6/29/17.
//  Copyright © 2017 adam smith. All rights reserved.
//

import Foundation

enum Hike {
    case stairway, diamondhead
    
    var name: String {
        switch self {
        case .diamondhead:
           return "Diamond Head"
        case .stairway:
            return "Stairway to Heaven"
        }
    }
}
