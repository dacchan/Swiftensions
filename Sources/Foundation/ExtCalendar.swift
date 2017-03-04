//
//  ExtCalendar.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import Foundation

extension Calendar {
    public static func gregorian() -> Calendar {
        return Calendar(identifier: .gregorian)
    }

    public static func buddhist() -> Calendar {
        return Calendar(identifier: .buddhist)
    }

    public static func chinese() -> Calendar {
        return Calendar(identifier: .chinese)
    }

    public static func coptic() -> Calendar {
        return Calendar(identifier: .coptic)
    }

    public static func ethiopicAmeteMihret() -> Calendar {
        return Calendar(identifier: .ethiopicAmeteMihret)
    }

    public static func ethiopicAmeteAlem() -> Calendar {
        return Calendar(identifier: .ethiopicAmeteAlem)
    }

    public static func hebrew() -> Calendar {
        return Calendar(identifier: .hebrew)
    }

    public static func iso8601() -> Calendar {
        return Calendar(identifier: .iso8601)
    }

    public static func indian() -> Calendar {
        return Calendar(identifier: .indian)
    }

    public static func islamic() -> Calendar {
        return Calendar(identifier: .islamic)
    }

    public static func islamicCivil() -> Calendar {
        return Calendar(identifier: .islamicCivil)
    }

    public static func japanese() -> Calendar {
        return Calendar(identifier: .japanese)
    }

    public static func persian() -> Calendar {
        return Calendar(identifier: .persian)
    }

    public static func republicOfChina() -> Calendar {
        return Calendar(identifier: .republicOfChina)
    }

    public static func islamicTabular() -> Calendar {
        return Calendar(identifier: .islamicTabular)
    }

    public static func islamicUmmAlQura() -> Calendar {
        return Calendar(identifier: .islamicUmmAlQura)
    }
}
