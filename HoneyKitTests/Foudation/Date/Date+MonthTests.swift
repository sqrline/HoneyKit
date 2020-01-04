//
//  Date+Month.swift
//  HoneyKitTests
//
//  Created by Aleksey Pleshkov on 30.12.2019.
//  Copyright © 2019 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

final class Date_MonthTests: XCTestCase {
  
  // MARK: - Private Properties
  
  private var formatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd.MM.yyyy HH:mm"
    return formatter
  }()
  
  // MARK: - Lifecycle
  
  override func setUp() {
    super.setUp()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  // MARK: - Test start of month
  
  func testStartOfMonth() {
    // Given
    let expectedDate = formatter.date(from: "01.12.2019 00:00")
    let currentDate = formatter.date(from: "20.12.2019 00:00") ?? Date()
    
    // When
    let startOfMonth = currentDate.startOfMonth
    
    // Then
    XCTAssertTrue(expectedDate == startOfMonth, "Start of month date not equal Expected date")
  }
  
  // MARK: - Test end of month
  
  func testEndOfMonth() {
    // Given
    let expectedDate = formatter.date(from: "31.12.2019 00:00")
    let currentDate = formatter.date(from: "20.12.2019 00:00") ?? Date()
    
    // When
    let endOfMonth = currentDate.endOfMonth
    
    // Then
    XCTAssertTrue(expectedDate == endOfMonth, "End of month date not equal Expected date")
  }
}
