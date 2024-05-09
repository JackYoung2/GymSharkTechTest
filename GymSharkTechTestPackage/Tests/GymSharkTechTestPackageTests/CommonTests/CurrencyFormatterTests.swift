//
//  CommonTests.swift
//  
//
//  Created by Jack Young on 09/05/2024.
//

import XCTest
import Common

final class CommonTests: XCTestCase {

    func testFormattedCurrencyFrom() throws {
        var expected = "£10.00"
        var actual = NumberFormatter.formattedCurrencyFrom(amount: 1000)
        XCTAssertEqual(expected, actual)
        
        expected = "£10.01"
        actual = NumberFormatter.formattedCurrencyFrom(amount: 1001)
        XCTAssertEqual(expected, actual)
        
        expected = "£1.00"
        actual = NumberFormatter.formattedCurrencyFrom(amount: 100)
        XCTAssertEqual(expected, actual)
        
        expected = "£0.10"
        actual = NumberFormatter.formattedCurrencyFrom(amount: 10)
        XCTAssertEqual(expected, actual)
        
        expected = "£0.01"
        actual = NumberFormatter.formattedCurrencyFrom(amount: 1)
        XCTAssertEqual(expected, actual)
        
        expected = "£0.00"
        actual = NumberFormatter.formattedCurrencyFrom(amount: 0)
        XCTAssertEqual(expected, actual)
    }
}
