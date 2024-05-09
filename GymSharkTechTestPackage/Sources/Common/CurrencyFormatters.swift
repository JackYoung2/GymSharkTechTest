//
//  File.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import Foundation

public extension NumberFormatter {
    static func currencyFormatter(for currencyCode: String) -> NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = currencyCode
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    static func formattedCurrencyFrom(amount: Int) -> String? {
        let formatter = NumberFormatter.currencyFormatter(for: "GBP")
        let majorUnits = formatter.getMajorUnits(code: "GBP", amount: amount)
        let stringValue = formatter.string(from: majorUnits as NSNumber)
        return stringValue
    }
    
    func getMajorUnits(code: String, amount: Int) -> Decimal {
        return Decimal(amount) / pow(10, self.minimumFractionDigits)
    }
}
