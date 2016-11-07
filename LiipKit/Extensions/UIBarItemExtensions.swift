//
//  UIBarItemExtensions.swift
//  Pods
//
//

import UIKit

extension UIBarItem {
    // LiipKit
    @IBInspectable var localizedTitle: String {
        set (key) {
            title = ~(key)
        }
        get {
            return title!
        }
    }
}
