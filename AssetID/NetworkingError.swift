//
//  NetworkingError.swift
//  AssetID
//
//  Created by adam smith on 6/29/17.
//  Copyright © 2017 adam smith. All rights reserved.
//

import Foundation

enum NetworkingError: LocalizedError {
    case slow
    
    public var failureReason: String? {
        switch self {
        case .slow:
            return "The server encountered some problems"
        }
    }
}

