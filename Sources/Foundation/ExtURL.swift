//
//  ExtURL.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import Foundation

extension URL {
    public var queryComponents: [String: String] {
        var queries = [String: String]()
        let params: [String] = query?.components(separatedBy: "&") ?? []

        params.forEach { p in
            let keyValue = p.components(separatedBy: "=")
            if keyValue.count > 1 {
                queries[keyValue[0]] = keyValue[1]
            }
        }

        return queries
    }
}
