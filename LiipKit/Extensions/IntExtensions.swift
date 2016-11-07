//
//  IntExtensions.swift
//  Pods
//
//

import Foundation

extension Int {
    /// LiipKit
    public func secondsToHoursMinutesSeconds() -> String {
        return "\(self/3600):\(String(format: "%02d", (self%3600)/60)):\(String(format: "%02d", (self%3600)%60))"
    }
}
