//
//  String+HTMLTests.swift
//  HoneyKitTests
//
//  Created by Vladimir Pchelyakov on 24.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

final class String_HTMLTests: XCTestCase {
  
  // MARK: - Private Properties
  
  private let htmlString = """
  <html>
  <h1>Hello, world!</h1>
  </html>
  """
  
  // MARK: - Tests
  
  /// Convert from html.
  /// Converted string should be equal to excpected.
  /// Converted string's font should be equal to excpected
  func testConvertFromHtml() {
    // Given
    let expectedString = "Hello, world!\n"
    let expectedFont = UIFont.systemFont(ofSize: 32, weight: .bold)
    
    // When
    let convertedString = htmlString.htmlToAttributedString(fontSize: 16)
    
    // Than
    let convertedStringAttributes = convertedString?.attributes(at: 0, effectiveRange: nil)
    let convertedStringFont = convertedStringAttributes![NSAttributedString.Key.font] as! UIFont

    XCTAssertEqual(convertedString?.string, expectedString)
    XCTAssertEqual(convertedStringFont.familyName, expectedFont.familyName)
    XCTAssertEqual(convertedStringFont.fontName, expectedFont.fontName)
    XCTAssertEqual(convertedStringFont.pointSize, expectedFont.pointSize)
  }
  
}
