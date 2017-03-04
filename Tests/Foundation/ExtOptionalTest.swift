//
//  ExtOptionalTest.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import XCTest

import Foundation
import Swiftensions

class ExOptionalTest: XCTestCase {
    func testOrElse() {
        var array: [String]?
        XCTAssert(array.orElse([ "empty" ]).first! == "empty")

        array = [ "exists" ]
        XCTAssert(array.orElse([]).first! == "exists")
    }

    func testMapOrElse() {
        var num: NSNumber?

        let i: Int = num.map(orElse: 0) { $0.intValue }
        XCTAssert(i == 0)

        num = 10
        let i2: Int = num.map(orElse: 0) { $0.intValue }
        XCTAssert(i2 == 10)
    }
}
