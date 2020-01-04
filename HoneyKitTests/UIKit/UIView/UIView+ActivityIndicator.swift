//
//  UIView+ActivityIndicator.swift
//  HoneyKitTests
//
//  Created by Aleksey Pleshkov on 04.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

final class UIView_ActivityIndicator: XCTestCase {
  
  // MARK: - Private Properties
  
  private var rootViewController: UIViewController!
  
  // MARK: - Lifecycle
  
  override func setUp() {
    super.setUp()
    
    rootViewController = UIViewController()
  }
  
  override func tearDown() {
    rootViewController = nil
    
    super.tearDown()
  }
  
  // MARK: - Show activity indicator
  
  func testShowActivityIndicator() {
    // Given
    XCTAssertTrue(rootViewController.view.subviews.isEmpty, "Root view controller already has child")
    
    // When
    rootViewController.view.showActivityIndicator(
      backgroundColor: .black,
      color: .white,
      style: .medium)
        
    // Then
    let containerActivityIndicator = rootViewController.view.subviews.first
    let activityIndicator = rootViewController.view.subviews.first?.subviews.first as? UIActivityIndicatorView
    
    XCTAssertNotNil(containerActivityIndicator, "Root view controller no has activity indicator")
    XCTAssertNotNil(activityIndicator, "Container no has UIActivityIndicator")
    
    XCTAssertEqual(containerActivityIndicator?.backgroundColor, UIColor.black)
    XCTAssertEqual(activityIndicator?.color, UIColor.white)
    XCTAssertEqual(activityIndicator?.style, UIActivityIndicatorView.Style.medium)
  }
  
  // MARK: - Hide activity indicator
  
  func testHideActivityIndicator() {
    // Given
    XCTAssertTrue(rootViewController.view.subviews.isEmpty, "Root view controller already has child")
    
    // When
    rootViewController.view.showActivityIndicator()
    XCTAssertFalse(rootViewController.view.subviews.isEmpty, "Root view controller no has child")
    rootViewController.view.hideActivityIndicator()
    
    // Then
    XCTAssertTrue(rootViewController.view.subviews.isEmpty, "Root view controller has child")
  }
}
