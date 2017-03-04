//
//  ExtNumberTest.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import XCTest

import Foundation
import Swiftensions

class ExNumberTest: XCTestCase {
    func testInt8() {
        let n: NSNumber = 1
        let a: Int8 = 2

        let newNumber = n <| a
        XCTAssert(newNumber == 2)

        let aNumber = newNumber + a
        XCTAssert(aNumber == 4)

        let mNumber = newNumber - a
        XCTAssert(mNumber == 0)
    }

    func testUInt8() {
        let n: NSNumber = 1
        let a: UInt8 = 2

        let newNumber = n <| a
        XCTAssert(newNumber == 2)

        let aNumber = newNumber + a
        XCTAssert(aNumber == 4)

        let mNumber = newNumber - a
        XCTAssert(mNumber == 0)
    }

    func testInt16() {
        let n: NSNumber = 1
        let a: Int16 = 2

        let newNumber = n <| a
        XCTAssert(newNumber == 2)

        let aNumber = newNumber + a
        XCTAssert(aNumber == 4)

        let mNumber = newNumber - a
        XCTAssert(mNumber == 0)
    }

    func testUInt16() {
        let n: NSNumber = 1
        let a: UInt16 = 2

        let newNumber = n <| a
        XCTAssert(newNumber == 2)

        let aNumber = newNumber + a
        XCTAssert(aNumber == 4)

        let mNumber = newNumber - a
        XCTAssert(mNumber == 0)
    }

    func testInt32() {
        let n: NSNumber = 1
        let a: Int32 = 2

        let newNumber = n <| a
        XCTAssert(newNumber == 2)

        let aNumber = newNumber + a
        XCTAssert(aNumber == 4)

        let mNumber = newNumber - a
        XCTAssert(mNumber == 0)
    }

    func testUInt32() {
        let n: NSNumber = 1
        let a: UInt32 = 2

        let newNumber = n <| a
        XCTAssert(newNumber == 2)

        let aNumber = newNumber + a
        XCTAssert(aNumber == 4)

        let mNumber = newNumber - a
        XCTAssert(mNumber == 0)
    }

    func testInt64() {
        let n: NSNumber = 1
        let a: Int64 = 2

        let newNumber = n <| a
        XCTAssert(newNumber == 2)

        let aNumber = newNumber + a
        XCTAssert(aNumber == 4)

        let mNumber = newNumber - a
        XCTAssert(mNumber == 0)
    }

    func testUInt64() {
        let n: NSNumber = 1
        let a: UInt64 = 2

        let newNumber = n <| a
        XCTAssert(newNumber == 2)

        let aNumber = newNumber + a
        XCTAssert(aNumber == 4)

        let mNumber = newNumber - a
        XCTAssert(mNumber == 0)
    }

    func testFloat() {
        let n: NSNumber = 1
        let a: Float = 2

        let newNumber = n <| a
        XCTAssert(newNumber == 2)

        let aNumber = newNumber + a
        XCTAssert(aNumber == 4)

        let mNumber = newNumber - a
        XCTAssert(mNumber == 0)
    }

    func testDouble() {
        let n: NSNumber = 1
        let a: Double = 2

        let newNumber = n <| a
        XCTAssert(newNumber == 2)

        let aNumber = newNumber + a
        XCTAssert(aNumber == 4)

        let mNumber = newNumber - a
        XCTAssert(mNumber == 0)
    }
    
    func testBool() {
        let n: NSNumber = 1
        let a: Bool = false
        
        let newNumber = n <| a
        XCTAssert(newNumber == false)
    }
    
    func testInt() {
        let n: NSNumber = 1
        let a: Int = 2
        
        let newNumber = n <| a
        XCTAssert(newNumber == 2)
        
        let aNumber = newNumber + a
        XCTAssert(aNumber == 4)
        
        let mNumber = newNumber - a
        XCTAssert(mNumber == 0)
    }
    
    func testUInt() {
        let n: NSNumber = 1
        let a: UInt = 2
        
        let newNumber = n <| a
        XCTAssert(newNumber == 2)
        
        let aNumber = newNumber + a
        XCTAssert(aNumber == 4)
        
        let mNumber = newNumber - a
        XCTAssert(mNumber == 0)
    }
}
