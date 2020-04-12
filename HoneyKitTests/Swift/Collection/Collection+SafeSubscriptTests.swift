//
//  Collection+SafeSubscriptTests.swift
//  HoneyKitTests
//
//  Created by Vladimir Pchelyakov on 09.04.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

final class Collection_SafeSubscriptTests: XCTestCase {
  
  // MARK: - Private Properties
  
  let array = [1, 2, 3]

  // MARK: - Tests
  
  /// Get item by index
  /// Method returns expected value
  func testGetItemByIndex() {
    // Given
    let expectedElement = 2
    
    // When
    let secondElement = array[safe: 1]
    
    // Than
    XCTAssertEqual(secondElement!, expectedElement)
  }
  
  /// Get item by out of bounds index
  /// Method returns nil, no crash
  func testGetItemByWrongIndex() {
    // When
    let tenthElement = array[safe: 10]
    
    // Than
    XCTAssertNil(tenthElement)
  }

}
