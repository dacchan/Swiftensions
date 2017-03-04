//
//  ExtOptional.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import Foundation

extension Optional {
    public func orElse(_ wrapped: Wrapped) -> Wrapped {
        return self.map { $0 } ?? wrapped
    }

    public func map<U>(orElse: U, transform: (Wrapped) -> U) -> U {
        return self.map(transform) ?? orElse
    }


}
