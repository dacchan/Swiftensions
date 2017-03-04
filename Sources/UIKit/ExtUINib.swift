//
//  ExtUINib.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import UIKit

extension UINib {
    public static func simpleNib<T>() -> T {
        return UINib(nibName: self.simpleNib(), bundle: nil) as! T
    }
}
