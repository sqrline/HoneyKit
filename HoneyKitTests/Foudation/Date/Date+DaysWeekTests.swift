//
//  Date+DaysWeek.swift
//  HoneyKitTests
//
//  Created by Aleksey Pleshkov on 07.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

final class Date_DaysWeekTests: XCTestCase {
  
  // MARK: - Lifecycle
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  // MARK: - Test start of week
  
  func testStartOfWeek() {
    // Given
    let currentDate = Date()
    let components = Calendar.current.dateComponents([.yearForWeekOfYear, .weekOfYear], from: currentDate)
    let expectedDate = Calendar.current.date(from: components)
    
    // When
    let startOfWeek = currentDate.startOfWeek
    
    // Then
    XCTAssertTrue(expectedDate == startOfWeek, "Start of week date not equal Expected date")
  }
  
  // MARK: - Test end of week
  
  func testEndOfWeek() {
    // Given
    let currentDate = Date()
    let components = Calendar.current.dateComponents([.yearForWeekOfYear, .weekOfYear], from: currentDate)
    let startOfWeekDate = Calendar.current.date(from: components) ?? Date()
    let endOfWeekDate = Calendar.current.date(byAdding: .day, value: 7, to: startOfWeekDate) ?? Date()
    let expectedDate = Calendar.current.date(byAdding: .second, value: -1, to: endOfWeekDate)
    
    // When
    let endOfWeek = currentDate.endOfWeek
    
    // Then
    XCTAssertTrue(expectedDate == endOfWeek, "End of week date not equal Expected date")
  }
}
