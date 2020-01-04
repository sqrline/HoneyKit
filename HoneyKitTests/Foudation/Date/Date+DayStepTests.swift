//
//  Date+DayStep.swift
//  HoneyKitTests
//
//  Created by Aleksey Pleshkov on 29.12.2019.
//  Copyright © 2019 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

final class Date_DayStepTests: XCTestCase {
  
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
  
  // MARK: - Forward step
  
  func testForwardStep() {
    // Given
    let expectedOneStepDate = formatter.date(from: "21.12.2019 00:00")
    let expectedTwoStepDate = formatter.date(from: "22.12.2019 00:00")
    let currentDate = formatter.date(from: "20.12.2019 00:00") ?? Date()
    
    // When
    let forwardOneStepDate = currentDate.step(.forward)
    let forwardTwoStepDate = currentDate.step(.forward, count: 2)
    
    // Then
    XCTAssertTrue(forwardOneStepDate == expectedOneStepDate, "Forward step day not equal Expected date")
    XCTAssertTrue(forwardTwoStepDate == expectedTwoStepDate, "Forward step day not equal Expected date")
  }
  
  // MARK: - Backward step
  
  func testBackwardStep() {
    // Given
    let expectedOneStepDate = formatter.date(from: "19.12.2019 00:00")
    let expectedTwoStepDate = formatter.date(from: "18.12.2019 00:00")
    let currentDate = formatter.date(from: "20.12.2019 00:00") ?? Date()
    
    // When
    let backwardOneStepDate = currentDate.step(.backward)
    let backwardTwoStepDate = currentDate.step(.backward, count: 2)
    
    // Then
    XCTAssertTrue(backwardOneStepDate == expectedOneStepDate, "Backward step day not equal Expected date")
    XCTAssertTrue(backwardTwoStepDate == expectedTwoStepDate, "Backward step day not equal Expected date")
  }
}
