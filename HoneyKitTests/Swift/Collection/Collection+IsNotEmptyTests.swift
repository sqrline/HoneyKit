//
//  Collection+IsNotEmptyTests.swift
//  HoneyKitTests
//
//  Created by Vladimir Pchelyakov on 09.04.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

final class Collection_IsNotEmptyTests: XCTestCase {

  // MARK: - Tests

  /// Testing a method for a non-empty collection. Method should return true
  func testNotEmptyArray_ShouldReturnTrue() {
    // Given
    let notEmptyArray = [1, 2, 3]
    
    // When
    let isNotEmpty = notEmptyArray.isNotEmpty
    
    // Than
    XCTAssert(isNotEmpty)
  }
  
  /// Testing a method for a empty collection. Method should return false
  func testEmptyArray_ShouldReturnFalse() {
    // Given
    let emptyArray: [Int] = []
    
    // When
    let isNotEmpty = emptyArray.isNotEmpty
    
    // Than
    XCTAssertFalse(isNotEmpty)
  }

}
