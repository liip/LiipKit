//
//  StringExtensions.swift
//  Pods
//
//

import Foundation

/// LiipKit
public prefix func ~ (key: String) -> String {
    return NSLocalizedString(key, comment: "No comment")
}

extension String {
    /// LiipKit
    public func isEmptyOrWhitespace() -> Bool {
        if(self.isEmpty) {
            return true
        }
        return (self.trimmingCharacters(in: CharacterSet.whitespaces) == "")
    }

    /// LiipKit
    public func toDateTime(_ dateFormat: String = "yyyy-MM-dd'T'HH:mm:ss.SSSZZ") -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = dateFormat
        let dateFromString = dateFormatter.date(from: self)
        return dateFromString
    }
}
