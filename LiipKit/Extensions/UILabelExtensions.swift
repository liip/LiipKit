//
//  UILabelExtensions.swift
//  Pods
//
//

import UIKit

extension UILabel {
    /// LiipKit
    @IBInspectable var localizedText: String {
        set (key) {
            text = ~(key)
        }
        get {
            return text!
        }
    }
}
