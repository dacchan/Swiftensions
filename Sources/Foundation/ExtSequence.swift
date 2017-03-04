//
//  ExtSequence.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import Foundation

extension Sequence {
    public func count(_ shouldCount: (Iterator.Element) -> Bool) -> Int {
        let f = self.filter(shouldCount)
        return f.count
    }
}
