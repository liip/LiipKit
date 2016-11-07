//
//  UIButtonExtensions.swift
//  Pods
//
//

import UIKit

extension UIButton {
    /// LiipKit
    @IBInspectable var localizedTitleForNormal: String {
        set (key) {
            setTitle(~(key), for: UIControlState())
        }
        get {
            return title(for: UIControlState())!
        }
    }

    /// LiipKit
    @IBInspectable var localizedTitleForHighlighted: String {
        set (key) {
            setTitle(~(key), for: .highlighted)
        }
        get {
            return title(for: .highlighted)!
        }
    }
}
