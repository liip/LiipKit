//
//  DoubleExtensions.swift
//  Pods
//
//

import Foundation

extension Double {
    func round(nearest: Double) -> Double {
        let n = 1/nearest
        let numberToRound = self * n
        return numberToRound.rounded() / n
    }
}
