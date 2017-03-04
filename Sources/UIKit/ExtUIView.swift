//
//  ExtUIView.swift
//  Swiftensions
//
//  Created by dacchan on 2017/03/04.
//  Copyright © 2017 dacchan. All rights reserved.
//

import UIKit

extension UIView {
    public static func simpleClassName() -> String {
        return NSStringFromClass(self).components(separatedBy: ".").first!
    }

    public static func nibName() -> String {
        return simpleClassName()
    }

    public static func reuseIdentifier() -> String {
        return simpleClassName()
    }
}

// MARK: - 

import QuartzCore

extension UIView {

    public func setupBorders(borderWidth: CGFloat = 1, borderColor: UIColor = .clear) {
        layer.masksToBounds = false
        setupCorner(radius: borderWidth)
        layer.borderColor = borderColor.cgColor

        layer.rasterizationScale = UIScreen.main.scale
        layer.shouldRasterize = true
    }

    public func setupCorner(radius: CGFloat) {
        layer.cornerRadius = radius
    }

    public func cercle() {
        setupCorner(radius: bounds.width / 2)
        clipsToBounds = true
    }
}

// MARK: - 

public enum TriangleDirection: Int {
    case left = 0
    case top
    case right
    case under
}

extension UIView {
    public func triangle(direction: TriangleDirection) {
        let rect = bounds
        let path = UIBezierPath()

        switch direction {
        case .top:
            path.move(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width / 2, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))

        case .left:
            path.move(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height / 2))

        case .right:
            path.move(to: CGPoint.zero)
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            path.addLine(to: CGPoint(x: rect.width, y: rect.height / 2))

        case .under:
            path.move(to: CGPoint.zero)
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            path.addLine(to: CGPoint(x: rect.width / 2, y: rect.height))

        }

        path.close()
//        fillColor.setFill()
        path.fill()
    }
}
