//
//  UIButton+LoadingIndicatorTests.swift
//  HoneyKitTests
//
//  Created by Aleksey Pleshkov on 12.02.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

class UIButton_LoadingIndicatorTests: XCTestCase {
  
  // MARK: - Public Methods
  
  func testShowLoadingIndicatorAtCenter() {
    // Given
    let button = UIButton()
    let expectedColor = UIColor.red
    let expectedConstraintCount = 2
    
    // When
    button.showLoadingIndicator(at: .center, color: .red)
    button.layoutIfNeeded()
    
    // Then
    let activityIndicator = button.subviews.first(where: { $0 is UIActivityIndicatorView }) as? UIActivityIndicatorView
    
    XCTAssertNotNil(activityIndicator)
    XCTAssertEqual(activityIndicator?.color, expectedColor)
    XCTAssertEqual(button.constraints.count, expectedConstraintCount)
  }
  
  func testHideLoadingIndicator() {
    // Given
    let button = UIButton()
    let expectationActivityIndicator = expectation(description: "loadingIndicatorHide")
    
    // When
    button.showLoadingIndicator(at: .center, color: .red)
    button.hideLoadingIndicator()
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
      expectationActivityIndicator.fulfill()
    }
    
    wait(for: [expectationActivityIndicator], timeout: 1)
    
    // Then
    XCTAssertFalse(button.subviews.contains(where: { $0 is UIActivityIndicatorView }))
  }
}
