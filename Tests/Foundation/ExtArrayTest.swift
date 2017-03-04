//
//  ExtArrayTest.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import XCTest

import Foundation
import Swiftensions

class ExArrayTest: XCTestCase {
    func testShuffle_one() {
        var one = [ "one" ]
        one.shuffle()

        XCTAssert(one.count == 1)
    }

    func testShuffle_many() {
        var many = [ "one", "2", "hoge" ]
        many.shuffle()

        XCTAssert(many.count ==  3)
    }

    func testShuffled_cout() {
        let list = [ 1, 2, 3, 4, 5 ]
        let shuffuled = list.shuffled()

        XCTAssert(list.count == shuffuled.count)
    }

    func testShuffled_consistency() {
        let list = [ "🐈", "🐱", "cat" ]
        let shuffuled = list.shuffled()

        var existsCount = 0
        list.forEach { e in
            if shuffuled.contains(e) {
                existsCount += 1
            }
        }

        XCTAssert(existsCount == list.count)
    }
}
