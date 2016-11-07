//
//  UIColorExtensions.swift
//  Pods
//
//

import UIKit

extension UIColor {
    /// LiipKit
    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }

    /// LiipKit
    public convenience init?(hexString: String, alpha: CGFloat = 1.0) {
        var formatted = hexString.replacingOccurrences(of: "0x", with: "")
        formatted = formatted.replacingOccurrences(of: "#", with: "")
        guard let hex = UInt(formatted, radix: 16) else { return nil }
        self.init(hex: hex, alpha: alpha)
    }

    /// LiipKit
    public convenience init(hex: UInt, alpha: CGFloat = 1.0) {
        self.init(
            r: CGFloat((hex & 0xFF0000) >> 16),
            g: CGFloat((hex & 0x00FF00) >> 8),
            b: CGFloat((hex & 0x0000FF) >> 0),
            a: alpha
        )
    }
}
