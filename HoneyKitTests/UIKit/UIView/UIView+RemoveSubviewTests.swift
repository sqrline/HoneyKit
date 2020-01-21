//
//  UIView+RemoveSubview.swift
//  HoneyKitTests
//
//  Created by Aleksey Pleshkov on 20.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

final class UIView_RemoveSubviewTests: XCTestCase {
  
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
  
  // MARK: - Remove all subviews from view
  
  func testRemoveSubviews() {
    let firstView = UIView()
    let secondView = UIView()
    
    containerView.addSubview(firstView)
    containerView.addSubview(secondView)
    XCTAssertFalse(containerView.subviews.isEmpty, "ContainerView should be not empty")
    
    containerView.removeSubviews()
    
    XCTAssert(containerView.subviews.isEmpty, "ContainerView should be empty")
  }
}
