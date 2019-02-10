//
//  RawRepresentable.swift
//  Swiftensions-iOSTests
//
//  Created by dacchan on 2019/02/10.
//  Copyright © 2019 dacchan. All rights reserved.
//

import XCTest

import Swiftensions

class RawRepresentable: XCTestCase {

    func testMap() {
        enum Animal: String {
            case cat, tiger, lion
        }

        let animal: Animal = .cat

        let face = animal.map { a -> String in
            switch a {
            case .cat: return "🐱"
            case .tiger: return "🐯"
            case .lion: return "🦁"
            }
        }

        XCTAssert(face == "🐱")
    }
}
