//
//  ExtArray.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import Foundation

extension Array {
    public mutating func shuffle() {
        guard !isEmpty else { return }

        for i in 0..<(count - 1) {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            if i != j {
                swap(&self[i], &self[j])
            }
        }
    }

    public func shuffled() -> [Element] {
        var list = self
        list.shuffle()
        return list
    }
}


extension Array {
    
}
