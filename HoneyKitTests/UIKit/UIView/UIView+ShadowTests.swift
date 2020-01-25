//
//  UIView+ShadowTests.swift
//  HoneyKitTests
//
//  Created by Vladimir Pchelyakov on 24.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

@testable import HoneyKit
import XCTest

final class UIView_ShadowTests: XCTestCase {

  // MARK: - DropShadow
  
  /// Drop shadow
  /// Layer's shadow properties should be set
  func testDropShadow() {
    // Given
    let expectedOpacity: Float = 6
    let expectedRadius: CGFloat = 6
    let expectedColor = UIColor.red
    let expectedSize = CGSize(width: 100, height: 100)
    
    let view = UIView()
    let shadowSize = CGSize(width: 100, height: 100)
    
    // When
    view.dropShadow(
      shadowOpacity: 6,
      shadowRadius: 6,
      shadowColor: .red,
      shadowOffset: shadowSize)
    
    // Than
    XCTAssertEqual(view.layer.shadowOpacity, expectedOpacity)
    XCTAssertEqual(view.layer.shadowRadius, expectedRadius)
    XCTAssertEqual(view.layer.shadowColor, expectedColor.cgColor)
    XCTAssertEqual(view.layer.shadowOffset, expectedSize)
  }
  
}
