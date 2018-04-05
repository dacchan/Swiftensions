//
//  ExtUserDefaults.swift
//  Swiftensions
//
//  Created by dacchan on 2018/04/01.
//  Copyright © 2018 dacchan. All rights reserved.
//

import Foundation

// MARK: -

extension UserDefaults {
    func contains(forKey key: String) -> Bool {
        return self.object(forKey: key) != nil
    }
}

// MARK: - Chaining methods

extension UserDefaults {
    @discardableResult
    func set(value: Any?, forKey defaultName: String) -> UserDefaults {
        self.set(value, forKey: defaultName)


        return self
    }

    @discardableResult
    public func remove(forKey defaultName: String) -> UserDefaults {
        self.removeObject(forKey: defaultName)

        return self
    }

    @discardableResult
    public func set(value: Int, forKey defaultName: String) -> UserDefaults {
        self.set(value, forKey: defaultName)

        return self
    }

    @discardableResult
    public func set(value: Float, forKey defaultName: String) -> UserDefaults {
        self.set(value, forKey: defaultName)

        return self
    }

    @discardableResult
    public func set(value: Double, forKey defaultName: String) -> UserDefaults {
        self.set(value, forKey: defaultName)

        return self
    }

    @discardableResult
    public func set(value: Bool, forKey defaultName: String) -> UserDefaults {
        self.set(value, forKey: defaultName)

        return self
    }

    @available(iOS 4.0, *)
    @discardableResult
    public func set(url: URL?, forKey defaultName: String) -> UserDefaults {
        self.set(url, forKey: defaultName)

        return self
    }
}
