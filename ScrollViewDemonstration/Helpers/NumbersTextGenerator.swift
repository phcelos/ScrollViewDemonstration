//
//  NumbersTextGenerator.swift
//  ScrollViewDemonstration
//
//  Created by Paulo Henrique on 25/01/23.
//

import Foundation

class NumbersTextGenerator {
    static func generateNumbersText(until lastNumber: Int) -> String {
        (1...lastNumber).reduce("", { partialResult, nextNumber in
            partialResult + String(nextNumber) + (nextNumber != lastNumber ? "\n" : "")
        })
    }
}
