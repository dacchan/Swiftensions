//
//  ExtStringTest.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import XCTest

import Foundation
import Swiftensions

class ExStringTest: XCTestCase {
    func testUTF8Count() {
        let val = "🇯🇵"
        let count = val.utf8Count

        // NOTE: "🇯🇵".utf8.count = 8
        XCTAssert(count == 8)
    }

    func testUTF16Count() {
        let val = "🇯🇵"
        let count = val.utf16Count

        // NOTE: "🇯🇵".utf16.count = 4
        XCTAssert(count == 4)
    }
    
    func testUnicodeScalarsCount() {
        let val = "🇯🇵"
        let count = val.unicodeScalarsCount

        // NOTE: "🇯🇵".unicodeScalars.count = 2
        XCTAssert(count == 2)
    }
    
    func testCharactersCount() {
        let val = "🇯🇵"
        let count = val.charactersCount

        // NOTE: "🇯🇵".characters.count = 1
        XCTAssert(count == 1)
    }
    

}
