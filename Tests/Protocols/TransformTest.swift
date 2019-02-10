//
//  TransformTest.swift
//  Swiftensions-iOSTests
//
//  Created by dacchan on 2019/02/10.
//  Copyright © 2019 dacchan. All rights reserved.
//

import XCTest

import protocol Swiftensions.TransformProtocol

class TransformTest: XCTestCase {


    func testMap_enum() {
        enum Animal: TransformProtocol {
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

    func testMap_object() {

        struct Animal: TransformProtocol {
            let meow: String
        }

        let animal = Animal(meow: "🦁")

        let cry = animal.map { a -> String in
            if a.meow == "🦁" {
                return "roar"
            } else {
                return "meow"
            }
        }

        XCTAssert(cry == "roar")
    }
}
