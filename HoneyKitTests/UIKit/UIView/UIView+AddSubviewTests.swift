//
//  UIView+AddSubviewTests.swift
//  HoneyKitTests
//
//  Created by Aleksey Pleshkov on 20.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

final class UIView_AddSubviewTests: XCTestCase {
  
  // MARK: - Private Properties
  
  private var containerView: UIView!
  
  // MARK: - Lifecycle
  
  override func setUp() {
    super.setUp()
    
    containerView = UIView()
  }
  
  override func tearDown() {
    containerView = nil
    
    super.tearDown()
  }
  
  // MARK: - Add subview with all side contraints
  
  func testAddSubviewFillBySubview() {
    let customView = UIView()
    
    XCTAssert(containerView.subviews.isEmpty, "ContainerView should be empty")
    containerView.addSubview(fillBy: customView)
    
    XCTAssertFalse(containerView.subviews.isEmpty, "ContainerView should be not empty")
    XCTAssertEqual(containerView.subviews.first, customView)
    XCTAssertNotNil(customView.topAnchor)
    XCTAssertNotNil(customView.leadingAnchor)
    XCTAssertNotNil(customView.trailingAnchor)
    XCTAssertNotNil(customView.bottomAnchor)
  }
}
