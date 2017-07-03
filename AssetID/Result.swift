//
//  Result.swift
//  MyStudio
//
//  Created by adam smith on 3/8/17.
//  Copyright © 2017 transeosolutions. All rights reserved.
//

import Foundation

/// The result of a an asynchronous method
enum Result<T> {
    case success(T)
    case failure(Error)
}
