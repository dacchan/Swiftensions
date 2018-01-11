//
//  ExtString.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import Foundation

// MARK: -

public enum StringCountType {
    case utf8
    case utf16
    case unicodeScalars
    case characters
}

extension String {
    public var utf8Count: Int { return self.utf8.count }
    public var utf16Count: Int { return self.utf16.count }
    public var unicodeScalarsCount: Int { return self.unicodeScalars.count }
    public var charactersCount: Int { return self.characters.count }

    public func count(_ type: StringCountType) -> Int {
        switch type {
        case .utf8: return self.utf8Count
        case .utf16: return self.utf16Count
        case .unicodeScalars: return self.unicodeScalarsCount
        case .characters: return self.charactersCount
        }
    }
}

extension String {
    public func localized(tableName: String? = nil, bundle: Bundle = Bundle.main, value: String = "", comment: String = "") -> String {
        return NSLocalizedString(self, tableName: tableName, bundle: bundle, value: value, comment: comment)
    }
}

// MARK: - operator +

public func + (lhs: String, rhs: Int8) -> String {
    return lhs + String(rhs)
}

public func + (lhs: String, rhs: UInt8) -> String {
    return lhs + String(rhs)
}

public func + (lhs: String, rhs: Int16) -> String {
    return lhs + String(rhs)
}

public func + (lhs: String, rhs: UInt16) -> String {
    return lhs + String(rhs)
}

public func + (lhs: String, rhs: Int32) -> String {
    return lhs + String(rhs)
}

public func + (lhs: String, rhs: UInt32) -> String {
    return lhs + String(rhs)
}

public func + (lhs: String, rhs: Int64) -> String {
    return lhs + String(rhs)
}

public func + (lhs: String, rhs: UInt64) -> String {
    return lhs + String(rhs)
}

public func + (lhs: String, rhs: Float) -> String {
    return lhs + String(rhs)
}

public func + (lhs: String, rhs: Double) -> String {
    return lhs + String(rhs)
}

public func + (lhs: String, rhs: Bool) -> String {
    return lhs + String(rhs)
}

public func + (lhs: String, rhs: Int) -> String {
    return lhs + String(rhs)
}

public func + (lhs: String, rhs: UInt) -> String {
    return lhs + String(rhs)
}

public func + (lhs: String, rhs: NSNumber) -> String {
    return lhs + rhs.stringValue
}
