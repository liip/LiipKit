//
//  NSDateExtensions.swift
//  Pods
//
//

import Foundation

extension Date {
    /// LiipKit
    public func toString(dateFormat: String = "dd-MM-yyyy") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        return dateFormatter.string(from: self)
    }
}
