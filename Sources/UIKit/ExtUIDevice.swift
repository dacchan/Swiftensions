//
//  ExtUIDevice.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import UIKit

extension UIDevice {
    public static var modelType: DeviceModel {
        return DeviceModel(identifier: modelIdentifier)
    }

    public static var modelName: String {
        let type = modelType
        switch type {
        case .newest: return modelIdentifier
        case _: return type.name
        }
    }

    // MARK: -

    private static var modelIdentifier: String {
        var info = utsname()
        uname(&info)

        let mirror = Mirror(reflecting: info.machine)
        let identifier = mirror.children.reduce("") { id, e in
            guard let val = e.value as? Int8, val != 0 else { return id }
            return id + String(UnicodeScalar(UInt8(val)))
        }

        return identifier
    }
}

///
public enum DeviceModel: String {
    // See: https://gist.github.com/adamawolf/3048717
    //   - https://www.theiphonewiki.com/wiki/Models#iPhone
    //   - https://www.theiphonewiki.com/wiki/Models#iPad

    case newest = "newest iOS device"

    // MARK: - iPhone

    case iPhone1_1 = "iPhone1,1"
    case iPhone1_2 = "iPhone1,2"
    case iPhone2_1 = "iPhone2,1"
    case iPhone3_1 = "iPhone3,1"
    case iPhone3_2 = "iPhone3,2"
    case iPhone3_3 = "iPhone3,3"
    case iPhone4_1 = "iPhone4,1"
    case iPhone5_1 = "iPhone5,1"
    case iPhone5_2 = "iPhone5,2"
    case iPhone5_3 = "iPhone5,3"
    case iPhone5_4 = "iPhone5,4"
    case iPhone6_1 = "iPhone6,1"
    case iPhone6_2 = "iPhone6,2"
    case iPhone7_1 = "iPhone7,1"
    case iPhone7_2 = "iPhone7,2"
    case iPhone8_1 = "iPhone8,1"
    case iPhone8_2 = "iPhone8,2"
    case iPhone8_4 = "iPhone8,4"
    case iPhone9_2 = "iPhone9,2"
    case iPhone9_3 = "iPhone9,3"
    case iPhone10_1 = "iPhone10,1"
    case iPhone10_2 = "iPhone10,2"
    case iPhone10_3 = "iPhone10,3"
    case iPhone10_4 = "iPhone10,4"
    case iPhone10_5 = "iPhone10,5"
    case iPhone10_6 = "iPhone10,6"
    case iPhone11_2 = "iPhone11,2"
    case iPhone11_4 = "iPhone11,4"
    case iPhone11_6 = "iPhone11,6"
    case iPhone11_8 = "iPhone11,8"
    case iPhone12_1 = "iPhone12,1"
    case iPhone12_3 = "iPhone12,3"
    case iPhone12_5 = "iPhone12,5"

    // MARK: - iPad

    case iPad1_1 = "iPad1,1"
    case iPad1_2 = "iPad1,2"
    case iPad2_1 = "iPad2,1"
    case iPad2_2 = "iPad2,2"
    case iPad2_3 = "iPad2,3"
    case iPad2_4 = "iPad2,4"
    case iPad2_5 = "iPad2,5"
    case iPad2_6 = "iPad2,6"
    case iPad2_7 = "iPad2,7"
    case iPad3_1 = "iPad3,1"
    case iPad3_2 = "iPad3,2"
    case iPad3_3 = "iPad3,3"
    case iPad3_4 = "iPad3,4"
    case iPad3_5 = "iPad3,5"
    case iPad3_6 = "iPad3,6"
    case iPad4_1 = "iPad4,1"
    case iPad4_2 = "iPad4,2"
    case iPad4_3 = "iPad4,3"
    case iPad4_4 = "iPad4,4"
    case iPad4_5 = "iPad4,5"
    case iPad4_6 = "iPad4,6"
    case iPad4_7 = "iPad4,7"
    case iPad4_8 = "iPad4,8"
    case iPad4_9 = "iPad4,9"
    case iPad5_1 = "iPad5,1"
    case iPad5_2 = "iPad5,2"
    case iPad5_3 = "iPad5,3"
    case iPad5_4 = "iPad5,4"
    case iPad6_3 = "iPad6,3"
    case iPad6_4 = "iPad6,4"
    case iPad6_7 = "iPad6,7"
    case iPad6_8 = "iPad6,8"
    case iPad6_11 = "iPad6,11"
    case iPad6_12 = "iPad6,12"
    case iPad7_1 = "iPad7,1"
    case iPad7_2 = "iPad7,2"
    case iPad7_3 = "iPad7,3"
    case iPad7_4 = "iPad7,4"
    case iPad7_5 = "iPad7,5"
    case iPad7_6 = "iPad7,6"
    case iPad7_11 = "iPad7,11"
    case iPad7_12 = "iPad7,12"
    case iPad8_1 = "iPad8,1"
    case iPad8_2 = "iPad8,2"
    case iPad8_3 = "iPad8,3"
    case iPad8_4 = "iPad8,4"
    case iPad8_5 = "iPad8,5"
    case iPad8_6 = "iPad8,6"
    case iPad8_7 = "iPad8,7"
    case iPad8_8 = "iPad8,8"
    case iPad11_1 = "iPad11,1"
    case iPad11_2 = "iPad11,2"
    case iPad11_3 = "iPad11,3"
    case iPad11_4 = "iPad11,4"

    // MARK:

    public init(identifier: String) {
        self = DeviceModel(rawValue: identifier) ?? .newest
    }

    // MARK:

    public var identifier: String {
        return self.rawValue
    }

    public var name: String {
        switch self {
        case .newest: return "newest iOS device"

        case .iPhone1_1: return "iPhone 1G"
        case .iPhone1_2: return "iPhone 3G"
        case .iPhone2_1: return "iPhone 3GS"
        case .iPhone3_1: return "iPhone 4 (GSM)"
        case .iPhone3_2: return "iPhone 4 (GSM Rev A)"
        case .iPhone3_3: return "iPhone 4 (CDMA)"
        case .iPhone4_1: return "iPhone 4S"
        case .iPhone5_1: return "iPhone 5 (GSM)"
        case .iPhone5_2: return "iPhone 5 (Global)"
        case .iPhone5_3: return "iPhone 5c (GSM)"
        case .iPhone5_4: return "iPhone 5c (Global)"
        case .iPhone6_1: return "iPhone 5s (GSM)"
        case .iPhone6_2: return "iPhone 5s (Global)"
        case .iPhone7_1: return "iPhone 6 Plus"
        case .iPhone7_2: return "iPhone 6"
        case .iPhone8_1: return "iPhone 6s"
        case .iPhone8_2: return "iPhone 6s Plus"
        case .iPhone8_4: return "iPhone SE"
        case .iPhone9_2: return "iPhone 7 Plus"
        case .iPhone9_3: return "iPhone 7"
        case .iPhone10_1: return "iPhone 8"
        case .iPhone10_2: return "iPhone 8 Plus"
        case .iPhone10_3: return "iPhone X"
        case .iPhone10_4: return "iPhone 8"
        case .iPhone10_5: return "iPhone 8 Plus"
        case .iPhone10_6: return "iPhone X"
        case .iPhone11_2: return "iPhone XS"
        case .iPhone11_4: return "iPhone XS Max"
        case .iPhone11_6: return "iPhone XS Max (Global)"
        case .iPhone11_8: return "iPhone XR"
        case .iPhone12_1: return "iPhone 11"
        case .iPhone12_3: return "iPhone 11 Pro"
        case .iPhone12_5: return "iPhone 11 Pro Max"

        case .iPad1_1: return "iPad 1G"
        case .iPad1_2: return "iPad 3G"
        case .iPad2_1: return "iPad 2 (Wi-Fi)"
        case .iPad2_2: return "iPad 2 (GSM)"
        case .iPad2_3: return "iPad 2 (CDMA)"
        case .iPad2_4: return "iPad 2 (Rev A)"
        case .iPad2_5: return "iPad mini"
        case .iPad2_6: return "iPad mini (GSM+LTE)"
        case .iPad2_7: return "iPad mini (CDMA+LTE)"
        case .iPad3_1: return "iPad 3 (Wi-Fi)"
        case .iPad3_2: return "iPad 3 (CDMA)"
        case .iPad3_3: return "iPad 3 (GSM)"
        case .iPad3_4: return "iPad 4 (Wi-Fi)"
        case .iPad3_5: return "iPad 4 (GSM+LTE)"
        case .iPad3_6: return "iPad 4 (CDMA+LTE)"
        case .iPad4_1: return "iPad Air (Wi-Fi)"
        case .iPad4_2: return "iPad Air (Wi-Fi+Cellular)"
        case .iPad4_3: return "iPad Air (Wi-Fi, China)"
        case .iPad4_4: return "iPad mini 2 (Retina, Wi-Fi)"
        case .iPad4_5: return "iPad mini 2 (Retina, Wi-Fi+Cellular)"
        case .iPad4_6: return "iPad mini 2 (Retina, China)"
        case .iPad4_7: return "iPad mini 3 (Wi-Fi)"
        case .iPad4_8: return "iPad mini 3 (Wi-Fi+Cellular)"
        case .iPad4_9: return "iPad mini 3 (Wi-Fi, China)"
        case .iPad5_1: return "iPad mini 4 (Wi-Fi)"
        case .iPad5_2: return "iPad mini 4 (Wi-Fi+Cellular)"
        case .iPad5_3: return "iPad Air 2 (Wi-Fi)"
        case .iPad5_4: return "iPad Air 2 (Wi-Fi+Cellular)"
        case .iPad6_3: return "iPad Pro (9.7-inch, Wi-Fi)"
        case .iPad6_4: return "iPad Pro (9.7-inch, Wi-Fi+Cellular)"
        case .iPad6_7: return "iPad Pro (12.9-inch, Wi-Fi)"
        case .iPad6_8: return "iPad Pro (12.9-inch, Wi-Fi+Cellular)"
        case .iPad6_11: return "iPad 5 (9.7-inch, Wi-Fi)"
        case .iPad6_12: return "iPad 5 (9.7-inch, Wi-Fi+Cellular)"
        case .iPad7_1: return "iPad Pro 2 (12.9-inch, Wi-Fi)"
        case .iPad7_2: return "iPad Pro 2 (12.9-inch, Wi-Fi+Cellular)"
        case .iPad7_3: return "iPad Pro (10.5-inch, Wi-Fi)"
        case .iPad7_4: return "iPad Pro (10.5-inch, Wi-Fi+Cellular)"
        case .iPad7_5: return "iPad 6 (Wi-Fi)"
        case .iPad7_6: return "iPad 6 (Wi-Fi+Cellular)"
        case .iPad7_11: return "iPad 7 (10.2-inch, WiFi)"
        case .iPad7_12: return "iPad 7 (10.2-inch, WiFi+Cellular)"
        case .iPad8_1: return "iPad Pro 3 (11-inch, Wi-Fi)"
        case .iPad8_2: return "iPad Pro 3 (11-inch, Wi-Fi, 1TB)"
        case .iPad8_3: return "iPad Pro 3 (11-inch, Wi-Fi+Cellular)"
        case .iPad8_4: return "iPad Pro 3 (11-inch, Wi-Fi+Cellular, 1TB)"
        case .iPad8_5: return "iPad Pro 3 (12.9-inch, Wi-Fi)"
        case .iPad8_6: return "iPad Pro 3 (12.9-inch, Wi-Fi, 1TB)"
        case .iPad8_7: return "iPad Pro 3 (12.9-inch, Wi-Fi+Cellular)"
        case .iPad8_8: return "iPad Pro 3 (12.9-inch, Wi-Fi+Cellular, 1TB)"
        case .iPad11_1: return "iPad mini 5 (Wi-Fi)"
        case .iPad11_2: return "iPad mini 5"
        case .iPad11_3: return "iPad Air 3 (Wi-Fi)"
        case .iPad11_4: return "iPad Air 3"
        }
    }
}
