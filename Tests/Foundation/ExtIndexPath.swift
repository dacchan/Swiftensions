//
//  ExtIndexPath.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import XCTest

import Foundation
import Swiftensions

class ExIndexPath: XCTestCase {
    func testTuple() {
        let index = IndexPath(row: 0, section: 1)
        let (section, row) = index.tupleForTable

        XCTAssert(section == 1)
        XCTAssert(row == 0)
    }
}
