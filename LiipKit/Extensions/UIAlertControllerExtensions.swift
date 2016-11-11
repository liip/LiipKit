//
//  UIAlertControllerExtensions.swift
//  Pods
//
//

import UIKit

extension UIAlertController {
    /// LiipKit
    public func show(animated flag: Bool = true, completion: (() -> Void)? = nil) {
        let alertWindow = UIWindow(frame: UIScreen.main.bounds)
        alertWindow.rootViewController = ClearViewController()
        alertWindow.backgroundColor = UIColor.clear
        alertWindow.windowLevel = UIWindowLevelAlert

        if let rootViewController = alertWindow.rootViewController {
            alertWindow.makeKeyAndVisible()
            rootViewController.present(self, animated: flag, completion: completion)
        }
    }
}
