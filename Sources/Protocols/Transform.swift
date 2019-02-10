//
//  Transform.swift
//  Swiftensions-iOS
//
//  Created by dacchan on 2019/02/10.
//  Copyright © 2019 dacchan. All rights reserved.
//

public protocol TransformProtocol {
    func map<U>(_ f:(Self) -> U) -> U
}

public extension TransformProtocol {
    func map<U>(_ f:(Self) -> U) -> U {
        return f(self)
    }
}
