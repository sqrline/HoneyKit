//
//  UIColor+HexTests.swift
//  HoneyKitTests
//
//  Created by Vladimir Pchelyakov on 12.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

final class UIColor_HexTests: XCTestCase {
  
  // MARK: - Successful init
  
  /// Init expectation color by defualt init
  /// Init color by hex string
  /// Inited colors by hex should be equal to expected color
  func testSuccessfulInit() {
    // Given
    let expectedRedColor = #colorLiteral(red: 1, green: 0.1490196078, blue: 0, alpha: 1)
    
    // When
    let upperCaseRed = UIColor(hexString: "FF2600")!
    let lowerCasedRed = UIColor(hexString: "ff2600")!
    let hashTagPrefixRed = UIColor(hexString: "#ff2600")!
    
    // Then
    XCTAssert(isColorsEqual(lhs: expectedRedColor, rhs: upperCaseRed), "Colors not equal")
    XCTAssert(isColorsEqual(lhs: expectedRedColor, rhs: lowerCasedRed), "Colors not equal")
    XCTAssert(isColorsEqual(lhs: expectedRedColor, rhs: hashTagPrefixRed), "Colors not equal")
  }
  
  // MARK: - Failable init
  
  /// Pass wrong string in init
  /// Inited colors by hex should be nil
  func testFailableInit() {
    
    // When
    let firstWrongColor = UIColor(hexString: "someRedColor")
    let secondWrongColor = UIColor(hexString: "superRedColor")
    
    // Then
    XCTAssertNil(firstWrongColor, "Init was successful")
    XCTAssertNil(secondWrongColor, "Init was successful")
  }
  
  // MARK: - Private Methods
  
  private func isColorsEqual(lhs: UIColor, rhs: UIColor) -> Bool {
    var lr: CGFloat = 0, lg: CGFloat = 0, lb: CGFloat = 0, la: CGFloat = 0
    lhs.getRed(&lr, green: &lg, blue: &lb, alpha: &la)
    
    var rr: CGFloat = 0, rg: CGFloat = 0, rb: CGFloat = 0, ra: CGFloat = 0
    rhs.getRed(&rr, green: &rg, blue: &rb, alpha: &ra)
    
    return lr == rr &&
      (Int(lg * 255.0) == Int(rg * 255.0)) &&
      (Int(lb * 255.0) == Int(rb * 255.0)) &&
      (Int(la * 255.0) == Int(ra * 255.0))
  }
  
}
