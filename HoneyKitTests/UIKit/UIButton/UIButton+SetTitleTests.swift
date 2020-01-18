//
//  UIButton+SetTitleTests.swift
//  HoneyKitTests
//
//  Created by Vladimir Pchelyakov on 18.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

final class UIButton_SetTitleTest: XCTestCase {
  
  // MARK: - Private Properties
  
  private var button: UIButton!
  
  // MARK: - Lifecycle
  
  override func setUp() {
    super.setUp()
    
    button = UIButton()
    button.setTitle("Initial value", for: .normal)
    button.setTitleColor(.black, for: .normal)
  }
  
  override func tearDown() {
    button = nil
    
    super.tearDown()
  }
  
  // MARK: - Tests
  
  /// Set new title by default settings
  /// Title should change, color should not change
  func testSetTitleByDefaultSettings() {
    // Given
    let expectationTitle = "New title"
    let expectationColor: UIColor = .black
    
    XCTAssertEqual(button.titleLabel?.text, "Initial value")
    XCTAssertEqual(button.titleLabel!.textColor, UIColor.black)
    
    // When
    button.setTitleWithAnimation(title: "New title", completion: nil)
    
    // Than
    XCTAssertEqual(button.titleLabel?.text, expectationTitle)
    XCTAssertEqual(button.titleLabel!.textColor, expectationColor)
  }
  
  /// Set title and color
  /// Title should change, color should  change, completion should be called after the animation finishes
  func testSetTitleAndColor() {
    // Given
    let expectationTitle = "New title"
    let expectationColor: UIColor = .red
    let completionExpectation = expectation(description: "completion")
    var isValueChangedInCompletion = false
    
    XCTAssertEqual(button.titleLabel?.text, "Initial value")
    XCTAssertEqual(button.titleLabel!.textColor, UIColor.black)
    
    // When
    button.setTitleWithAnimation(
      title: expectationTitle,
      color: expectationColor,
      animationDuration: 0.6,
      animationOption: .curveEaseInOut) {
        isValueChangedInCompletion = true
        completionExpectation.fulfill()
    }
    
    // Than
    XCTAssertFalse(isValueChangedInCompletion)
    
    waitForExpectations(timeout: 1, handler: nil)
    
    XCTAssertTrue(isValueChangedInCompletion)
    
    XCTAssertEqual(button.titleLabel?.text, expectationTitle)
    XCTAssertEqual(button.titleLabel!.textColor, expectationColor)
  }
  
}
