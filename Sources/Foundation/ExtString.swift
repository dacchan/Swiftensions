//
//  ExtString.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import Foundation

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
//    public func localized(tableName: String? = default, bundle: Bundle = default, value: String = default, comment: String = "") -> String {
//        // TODO: NSLocalizedString(_ key: String, tableName: String? = default, bundle: Bundle = default, value: String = default, comment: String)
//        return NSLocalizedString(self, comment: comment)
//    }
}
