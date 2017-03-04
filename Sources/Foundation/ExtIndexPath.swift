//
//  ExtIndexPath.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import Foundation

extension IndexPath {
    public var tupleForTable: (section: Int, row: Int) {
        return (section: self.section, row: self.row)
    }
}
