//
//  HikeInfoFetcher.swift
//  AssetID
//
//  Created by adam smith on 6/29/17.
//  Copyright © 2017 adam smith. All rights reserved.
//

import Foundation

typealias HikeCompletionHandler = (Result<String>)->()


enum HikeFetcher {
    static func fetchInfo(for hike: Hike,_ completionHandler: @escaping HikeCompletionHandler) {
        getInfoFromServer(for: hike, completionHandler)
    }
    
    private static func getInfoFromServer(for hike: Hike,_ completionHandler: @escaping HikeCompletionHandler) {
        usleep(300000)
        
        switch hike {
        case .diamondhead:
            completionHandler(Result.failure(NetworkingError.slow))
        case .stairway:
            completionHandler(Result.success("This is a crazy hard hike"))
        }
    }
}
