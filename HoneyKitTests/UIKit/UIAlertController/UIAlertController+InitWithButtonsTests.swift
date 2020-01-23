//
//  UIAlertController+InitWithButtons.swift
//  HoneyKitTests
//
//  Created by Aleksey Pleshkov on 22.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

import XCTest

final class UIAlertController_InitWithButtonsTests: XCTestCase {
  
  // MARK: - Init alert controller with one button
  
  func testInitWithOneButton() {
    let expectationTitle = "Title"
    let expectationMessage = "Message"
    let expectationTintColor = UIColor.black
    let expectationButtonTitle = "Ok"
    let expectationActionCount = 1
    
    let alertController = UIAlertController(
      title: "Title",
      message: "Message",
      tintColor: .black,
      buttonTitle: "Ok",
      buttonAction: nil)
    
    XCTAssertNotNil(alertController)
    XCTAssertEqual(alertController.title, expectationTitle)
    XCTAssertEqual(alertController.message, expectationMessage)
    XCTAssertEqual(alertController.view.tintColor, expectationTintColor)
    XCTAssertEqual(alertController.actions.count, expectationActionCount)
    XCTAssertEqual(alertController.actions.first?.title, expectationButtonTitle)
  }
  
  // MARK: - Init alert controller with two buttons
  
  func testInitWithTwoButton() {
    let expectationTitle = "Title"
    let expectationMessage = "Message"
    let expectationTintColor = UIColor.black
    
    let expectationFirstButtonTitle = "Cancel"
    let expectationFirstButtonStyle = UIAlertAction.Style.cancel
    
    let expectationSecondButtonTitle = "Ok"
    let expectationSecondButtonStyle = UIAlertAction.Style.default
    
    let expectationActionCount = 2
    
    let alertController = UIAlertController(
      title: "Title",
      message: "Message",
      tintColor: .black,
      firstButtonTitle: "Cancel",
      firstButtonAction: nil,
      firstButtonStyle: .cancel,
      secondButtonTitle: "Ok",
      secondButtonAction: nil,
      secondButtonStyle: .default)
    
    XCTAssertNotNil(alertController)
    XCTAssertEqual(alertController.title, expectationTitle)
    XCTAssertEqual(alertController.message, expectationMessage)
    XCTAssertEqual(alertController.view.tintColor, expectationTintColor)
    XCTAssertEqual(alertController.actions.count, expectationActionCount)
    
    XCTAssertEqual(alertController.actions.first?.title, expectationFirstButtonTitle)
    XCTAssertEqual(alertController.actions.first?.style, expectationFirstButtonStyle)
    XCTAssertEqual(alertController.actions.last?.title, expectationSecondButtonTitle)
    XCTAssertEqual(alertController.actions.last?.style, expectationSecondButtonStyle)
  }
}
