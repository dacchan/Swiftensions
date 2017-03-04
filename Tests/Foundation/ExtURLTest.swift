//
//  ExtURLTest.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import XCTest

import Foundation
import Swiftensions

class ExtURLTest: XCTestCase {
    func testQueryComponents() {
        let url = URL(string: "https://github.com/dacchan?hoge=1&fuga=2")
        let query = url!.queryComponents

        XCTAssert(query["hoge"] == "1")
        XCTAssert(query["fuga"] == "2")
    }
}
