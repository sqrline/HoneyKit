//
//  UIViewController+ChildTests.swift
//  HoneyKitTests
//
//  Created by Vladimir Pchelyakov on 28.12.2019.
//  Copyright © 2019 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

final class UIViewController_ChildTests: XCTestCase {
  
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
  
  // MARK: - Add child
  
  /// Root view controller have not child.
  /// Add child view controller to root view controller.
  /// Root view controller should have child.
  func testAddChild() {
    // Given
    XCTAssertNil(rootViewController?.children.first, "Root view controller already has child")
    
    // When
    let childViewController = UIViewController()
    rootViewController.addChild(viewController: childViewController, to: rootViewController.view)
    
    // Then
    XCTAssertNotNil(rootViewController.children.first, "Root view controller has no child")
  }
  
  // MARK: - Remove child
  
  /// Root view controller has child.
  /// Remove child from parent view controller.
  /// Root view controller should not have child.
  func testRemovehild() {
    // Given
    XCTAssertNil(rootViewController?.children.first, "Root view controller already has child")

    let childViewController = UIViewController()
    rootViewController.addChild(childViewController)
    rootViewController.view.addSubview(childViewController.view)
    childViewController.didMove(toParent: rootViewController)

    XCTAssertNotNil(rootViewController.children.first, "Root view controller has no child")
    
    // When
    rootViewController.removeChild(viewController: childViewController)
    
    // Then
    XCTAssertNil(rootViewController.children.first, "Root view controller has child")
  }
  
  // MARK: - Switch child
  
  final class NextViewController: UIViewController { }

  /// Root view controller has child.
  /// Change child to the NextViewController
  /// Root view controller's child should be NextViewController
  func testSwitchChild() {
    // Given
    let firstViewController = UIViewController()
    rootViewController.addChild(firstViewController)
    rootViewController.view.addSubview(firstViewController.view)
    firstViewController.didMove(toParent: rootViewController)

    XCTAssertNotNil(rootViewController.children.first, "Root view controller has no child")
    
    // When
    let nextViewController = NextViewController()
    rootViewController.switchChild(from: firstViewController, to: nextViewController, in: rootViewController.view)
    
    // Then
    XCTAssertNotNil(rootViewController.children.first as? NextViewController, "Child is not NextViewController")
  }
  
}
