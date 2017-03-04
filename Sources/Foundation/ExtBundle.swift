//
//  ExtBundle.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import Foundation

extension Bundle {
    public static var shortVersion: String {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    }

    public static var buildVersion: String {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String
    }

    public static var displayName: String {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as! String
    }

    public static var urlSchemes: [String] {
        guard let info = Bundle.main.infoDictionary,
            let types = info["CFBundleURLTypes"] as? [[String: AnyObject]]
            else { return [] }

        let schemes = types.map { $0["CFBundleURLSchemes"] as! String }

        return schemes
    }
}

