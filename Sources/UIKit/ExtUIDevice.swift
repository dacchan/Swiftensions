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
        return DeviceModel(modelName: modelName)
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

    // MARK: - iPad
    
    case iPad1_1 = "iPad1,1"
    case iPad2_1 = "iPad2,1"
    case iPad2_2 = "iPad2,2"
    case iPad2_3 = "iPad2,3"
    case iPad2_4 = "iPad2,4"
    case iPad3_1 = "iPad3,1"
    case iPad3_2 = "iPad3,2"
    case iPad3_3 = "iPad3,3"
    case iPad3_4 = "iPad3,4"
    case iPad3_5 = "iPad3,5"
    case iPad3_6 = "iPad3,6"
    case iPad4_1 = "iPad4,1"
    case iPad4_2 = "iPad4,2"
    case iPad5_3 = "iPad5,3"
    case iPad5_4 = "iPad5,4"

    // MARK:

    init(modelName: String) {
        self = DeviceModel(rawValue: modelName) ?? .newest
    }

    // MARK:

    var identifier: String {
        return self.rawValue
    }

    var name: String {
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

        case .iPad1_1: return "iPad 1G"
        case .iPad2_1: return "iPad 2 (Wi-Fi)"
        case .iPad2_2: return "iPad 2 (GSM)"
        case .iPad2_3: return "iPad 2 (CDMA)"
        case .iPad2_4: return "iPad 2 (Rev A)"
        case .iPad3_1: return "iPad 3 (Wi-Fi)"
        case .iPad3_2: return "iPad 3 (GSM)"
        case .iPad3_3: return "iPad 3 (Global)"
        case .iPad3_4: return "iPad 4 (Wi-Fi)"
        case .iPad3_5: return "iPad 4 (GSM)"
        case .iPad3_6: return "iPad 4 (Global)"
        case .iPad4_1: return "iPad Air (Wi-Fi)"
        case .iPad4_2: return "iPad Air (Cellular)"
        case .iPad5_3: return "iPad Air 2 (Wi-Fi)"
        case .iPad5_4: return "iPad Air 2 (Cellular)"
        }
    }
}
