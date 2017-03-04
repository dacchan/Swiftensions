//
//  ExtNumber.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import Foundation

extension NSNumber {

}

// MARK: -
infix operator <| : MultiplicationPrecedence

// MARK: - operator ==

public func == <T: NSNumber>(lhs: T, rhs: Int8) -> Bool {
    return lhs.int8Value == rhs
}

public func == <T: NSNumber>(lhs: T, rhs: UInt8) -> Bool {
    return lhs.uint8Value == rhs
}

public func == <T: NSNumber>(lhs: T, rhs: Int16) -> Bool {
    return lhs.int16Value == rhs
}

public func == <T: NSNumber>(lhs: T, rhs: UInt16) -> Bool {
    return lhs.uint16Value == rhs
}

public func == <T: NSNumber>(lhs: T, rhs: Int32) -> Bool {
    return lhs.int32Value == rhs
}

public func == <T: NSNumber>(lhs: T, rhs: UInt32) -> Bool {
    return lhs.uint32Value == rhs
}

public func == <T: NSNumber>(lhs: T, rhs: Int64) -> Bool {
    return lhs.int64Value == rhs
}

public func == <T: NSNumber>(lhs: T, rhs: UInt64) -> Bool {
    return lhs.uint64Value == rhs
}

public func == <T: NSNumber>(lhs: T, rhs: Float) -> Bool {
    return lhs.floatValue == rhs
}

public func == <T: NSNumber>(lhs: T, rhs: Double) -> Bool {
    return lhs.doubleValue == rhs
}

public func == <T: NSNumber>(lhs: T, rhs: Bool) -> Bool {
    return lhs.boolValue == rhs
}

public func == <T: NSNumber>(lhs: T, rhs: Int) -> Bool {
    return lhs.intValue == rhs
}

public func == <T: NSNumber>(lhs: T, rhs: UInt) -> Bool {
    return lhs.uintValue == rhs
}

// MARK: - operator <|

public func <| <T: NSNumber>(lhs: T, rhs: Int8) -> T {
    return T(value: rhs)
}

public func <| <T: NSNumber>(lhs: T, rhs: UInt8) -> T {
    return T(value: rhs)
}

public func <| <T: NSNumber>(lhs: T, rhs: Int16) -> T {
    return T(value: rhs)
}

public func <| <T: NSNumber>(lhs: T, rhs: UInt16) -> T {
    return T(value: rhs)
}

public func <| <T: NSNumber>(lhs: T, rhs: Int32) -> T {
    return T(value: rhs)
}

public func <| <T: NSNumber>(lhs: T, rhs: UInt32) -> T {
    return T(value: rhs)
}

public func <| <T: NSNumber>(lhs: T, rhs: Int64) -> T {
    return T(value: rhs)
}

public func <| <T: NSNumber>(lhs: T, rhs: UInt64) -> T {
    return T(value: rhs)
}

public func <| <T: NSNumber>(lhs: T, rhs: Float) -> T {
    return T(value: rhs)
}

public func <| <T: NSNumber>(lhs: T, rhs: Double) -> T {
    return T(value: rhs)
}

public func <| <T: NSNumber>(lhs: T, rhs: Bool) -> T {
    return T(value: rhs)
}

public func <| <T: NSNumber>(lhs: T, rhs: Int) -> T {
    return T(value: rhs)
}

public func <| <T: NSNumber>(lhs: T, rhs: UInt) -> T {
    return T(value: rhs)
}

// MARK: - operator +

public func + <T: NSNumber>(lhs: T, rhs: Int8) -> T {
    return T(value: lhs.int8Value + rhs)
}

public func + <T: NSNumber>(lhs: T, rhs: UInt8) -> T {
    return T(value: lhs.uint8Value + rhs)
}

public func + <T: NSNumber>(lhs: T, rhs: Int16) -> T {
    return T(value: lhs.int16Value + rhs)
}

public func + <T: NSNumber>(lhs: T, rhs: UInt16) -> T {
    return T(value: lhs.uint16Value + rhs)
}

public func + <T: NSNumber>(lhs: T, rhs: Int32) -> T {
    return T(value: lhs.int32Value + rhs)
}

public func + <T: NSNumber>(lhs: T, rhs: UInt32) -> T {
    return T(value: lhs.uint32Value + rhs)
}

public func + <T: NSNumber>(lhs: T, rhs: Int64) -> T {
    return T(value: lhs.int64Value + rhs)
}

public func + <T: NSNumber>(lhs: T, rhs: UInt64) -> T {
    return T(value: lhs.uint64Value + rhs)
}

public func + <T: NSNumber>(lhs: T, rhs: Float) -> T {
    return T(value: lhs.floatValue + rhs)
}

public func + <T: NSNumber>(lhs: T, rhs: Double) -> T {
    return T(value: lhs.doubleValue + rhs)
}

public func + <T: NSNumber>(lhs: T, rhs: Int) -> T {
    return T(value: lhs.intValue + rhs)
}

public func + <T: NSNumber>(lhs: T, rhs: UInt) -> T {
    return T(value: lhs.uintValue + rhs)
}

// MARK: - operator -

public func - <T: NSNumber>(lhs: T, rhs: Int8) -> T {
    return T(value: lhs.int8Value - rhs)
}

public func - <T: NSNumber>(lhs: T, rhs: UInt8) -> T {
    return T(value: lhs.uint8Value - rhs)
}

public func - <T: NSNumber>(lhs: T, rhs: Int16) -> T {
    return T(value: lhs.int16Value - rhs)
}

public func - <T: NSNumber>(lhs: T, rhs: UInt16) -> T {
    return T(value: lhs.uint16Value - rhs)
}

public func - <T: NSNumber>(lhs: T, rhs: Int32) -> T {
    return T(value: lhs.int32Value - rhs)
}

public func - <T: NSNumber>(lhs: T, rhs: UInt32) -> T {
    return T(value: lhs.uint32Value - rhs)
}

public func - <T: NSNumber>(lhs: T, rhs: Int64) -> T {
    return T(value: lhs.int64Value - rhs)
}

public func - <T: NSNumber>(lhs: T, rhs: UInt64) -> T {
    return T(value: lhs.uint64Value - rhs)
}

public func - <T: NSNumber>(lhs: T, rhs: Float) -> T {
    return T(value: lhs.floatValue - rhs)
}

public func - <T: NSNumber>(lhs: T, rhs: Double) -> T {
    return T(value: lhs.doubleValue - rhs)
}

public func - <T: NSNumber>(lhs: T, rhs: Int) -> T {
    return T(value: lhs.intValue - rhs)
}

public func - <T: NSNumber>(lhs: T, rhs: UInt) -> T {
    return T(value: lhs.uintValue - rhs)
}
