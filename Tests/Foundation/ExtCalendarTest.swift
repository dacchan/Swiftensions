//
//  ExtCalendarTest.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import XCTest

import Foundation
import Swiftensions

class ExtCalendarTest: XCTestCase {

    func testGregorian() {
        let calendar = Calendar.gregorian()

        XCTAssert(calendar.identifier == .gregorian)
    }

    func testBuddhist() {
        let calendar = Calendar.buddhist()

        XCTAssert(calendar.identifier == .buddhist)
    }
    
    func testChinese() {
        let calendar = Calendar.chinese()

        XCTAssert(calendar.identifier == .chinese)
    }
    
    func testCoptic() {
        let calendar = Calendar.coptic()

        XCTAssert(calendar.identifier == .coptic)
    }
    
    func testEthiopicAmeteMihret() {
        let calendar = Calendar.ethiopicAmeteMihret()

        XCTAssert(calendar.identifier == .ethiopicAmeteMihret)
    }
    
    func testEthiopicAmeteAlem() {
        let calendar = Calendar.ethiopicAmeteAlem()

        XCTAssert(calendar.identifier == .ethiopicAmeteAlem)
    }
    
    func testHebrew() {
        let calendar = Calendar.hebrew()

        XCTAssert(calendar.identifier == .hebrew)
    }
    
    func testIso8601() {
        let calendar = Calendar.iso8601()

        XCTAssert(calendar.identifier == .iso8601)
    }
    
    func testIndian() {
        let calendar = Calendar.indian()

        XCTAssert(calendar.identifier == .indian)
    }
    
    func testIslamic() {
        let calendar = Calendar.islamic()

        XCTAssert(calendar.identifier == .islamic)
    }
    
    func testIslamicCivil() {
        let calendar = Calendar.islamicCivil()

        XCTAssert(calendar.identifier == .islamicCivil)
    }
    
    func testJapanese() {
        let calendar = Calendar.japanese()

        XCTAssert(calendar.identifier == .japanese)
    }
    
    func testPersian() {
        let calendar = Calendar.persian()

        XCTAssert(calendar.identifier == .persian)
    }
    
    func testRepublicOfChina() {
        let calendar = Calendar.republicOfChina()

        XCTAssert(calendar.identifier == .republicOfChina)
    }
    
    func testIslamicTabular() {
        let calendar = Calendar.islamicTabular()

        XCTAssert(calendar.identifier == .islamicTabular)
    }
    
    func testIslamicUmmAlQura() {
        let calendar = Calendar.islamicUmmAlQura()

        XCTAssert(calendar.identifier == .islamicUmmAlQura)
    }
}
