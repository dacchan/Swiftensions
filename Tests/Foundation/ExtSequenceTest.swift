//
//  ExtSequenceTest.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import XCTest

import Foundation
import Swiftensions

class ExSequenceTest: XCTestCase {
    func testCount() {
        let list = [ 1, 2, 3, 4, 5 ]
        let count = list.count { $0 <= 3 }

        XCTAssert(count == 3)
    }
}
