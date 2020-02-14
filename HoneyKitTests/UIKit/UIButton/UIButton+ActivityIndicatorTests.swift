//
//  UIButton+ActivityIndicatorTests.swift
//  HoneyKitTests
//
//  Created by Aleksey Pleshkov on 12.02.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

class UIButton_ActivityIndicatorTests: XCTestCase {
  
  // MARK: - Public Methods
  
  func testShowActivityIndicatorAtCenter() {
    // Given
    let button = UIButton()
    let expectedColor = UIColor.red
    let expectedConstraintCount = 2
    
    // When
    button.showActivityIndicator(at: .center, color: .red)
    button.layoutIfNeeded()
    
    // Then
    let activityIndicator = button.subviews.first(where: { $0 is UIActivityIndicatorView }) as? UIActivityIndicatorView
    
    XCTAssertNotNil(activityIndicator)
    XCTAssertEqual(activityIndicator?.color, expectedColor)
    XCTAssertEqual(button.constraints.count, expectedConstraintCount)
  }
  
  func testHideActivityIndicator() {
    // Given
    let button = UIButton()
    let expectationActivityIndicator = expectation(description: "activityIndicatorHide")
    
    // When
    button.showActivityIndicator(at: .center, color: .red)
    button.hideActivityIndicator()
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
      expectationActivityIndicator.fulfill()
    }
    
    wait(for: [expectationActivityIndicator], timeout: 1)
    
    // Then
    XCTAssertFalse(button.subviews.contains(where: { $0 is UIActivityIndicatorView }))
  }
}
