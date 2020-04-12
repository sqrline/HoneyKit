//
//  UIBarButtonItem+BadgeTests.swift
//  HoneyKitTests
//
//  Created by Aleksey Pleshkov on 09.04.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

final class UIBarButtonItem_BadgeTests: XCTestCase {
  
  // MARK: - Private Properties
  
  private var sut: UIBarButtonItem!
  private var navigationController: UINavigationController!
  private var viewController: UIViewController!
  
  // MARK: - Lifecycle
  
  override func setUp() {
    super.setUp()
    
    sut = UIBarButtonItem(customView: UIView())
    viewController = UIViewController()
    navigationController = UINavigationController(rootViewController: viewController)
    
    viewController.navigationItem.rightBarButtonItem = sut
    
    _ = viewController.view
  }
  
  override func tearDown() {
    sut = nil
    navigationController = nil
    viewController = nil
        
    super.tearDown()
  }
  
  // MARK: - Test configure badge
  
  func testConfigureBadge() {
    // Given
    let expectedTextColor = UIColor.black
    let expectedBackgroundColor = UIColor.brown
        
    // When
    sut.configureBadge(textColor: .black, backgroundColor: .brown)
        
    // Then
    let barButtonView = sut.value(forKey: "view") as? UIView
    let barButtonLabel = barButtonView?.subviews.first(where: { $0 is UILabel }) as? UILabel
    
    XCTAssertNotNil(barButtonLabel)
    XCTAssertEqual(barButtonLabel?.textColor, expectedTextColor)
    XCTAssertEqual(barButtonLabel?.backgroundColor, expectedBackgroundColor)
  }
  
  // MARK: - Test update badge value
  
  func testUpdateBadge() {
    // Given
    let expectedTextColor = UIColor.white
    let expectedBackgroundColor = UIColor.red
    let expectedBadgeValue = "99"
    
    // When
    sut.updateBadge(expectedBadgeValue)
    
    // Then
    let barButtonView = sut.value(forKey: "view") as? UIView
    let barButtonLabel = barButtonView?.subviews.first(where: { $0 is UILabel }) as? UILabel
    
    XCTAssertNotNil(barButtonLabel)
    XCTAssertEqual(barButtonLabel?.textColor, expectedTextColor)
    XCTAssertEqual(barButtonLabel?.backgroundColor, expectedBackgroundColor)
    XCTAssertEqual(barButtonLabel?.text, expectedBadgeValue)
  }
  
  // MARK: - Test hide badge value
  
  func testUpdateBadgeIsHidden() {
    // Given
    let expectedInitialHiddenValue = false
    let expectedResultHiddenValue = true
    
    // When
    sut.updateBadge("99")
            
    // Then
    let barButtonView = sut.value(forKey: "view") as? UIView
    let barButtonLabel = barButtonView?.subviews.first(where: { $0 is UILabel }) as? UILabel
    
    XCTAssertNotNil(barButtonLabel)
    XCTAssertEqual(barButtonLabel?.isHidden, expectedInitialHiddenValue)
    
    sut.updateBadge(nil)
    
    XCTAssertNotNil(barButtonLabel)
    XCTAssertEqual(barButtonLabel?.isHidden, expectedResultHiddenValue)
  }
}
