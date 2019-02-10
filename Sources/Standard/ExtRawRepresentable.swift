//
//  ExtRawRepresentable.swift
//  Swiftensions-iOS
//
//  Created by dacchan on 2019/02/08.
//  Copyright © 2019 dacchan. All rights reserved.
//

extension RawRepresentable {

    /// See: https://qiita.com/dacchan/items/fbbd0bbe12e2f5010241#rawrepresentable-%E3%81%AE-extension-%E3%81%A7%E7%94%A8%E6%84%8F%E3%81%99%E3%82%8B
    public func map<U>(_ f:(Self) -> U) -> U {
        return f(self)
    }
}
