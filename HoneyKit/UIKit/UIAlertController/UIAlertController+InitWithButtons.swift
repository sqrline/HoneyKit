//
//  UIAlertController+InitWithButtons.swift
//  HoneyKit
//
//  Created by Aleksey Pleshkov on 22.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

import UIKit

/// Creates alert with action buttons
public extension UIAlertController {
  
  /// Creates alert with one action button
  ///
  /// # Example
  /// ```
  /// let buttonAction = { print("It's work!") }
  /// let alert = UIAlertController(title: "Title", message: "Message", tintColor: .blue, buttonTitle: "OK", buttonAction: buttonAction)
  /// someViewController.present(alert, animated: true)
  /// ```
  /// - Parameters:
  ///   - title: Alert title
  ///   - message: Alert body message
  ///   - tintColor: Alert elements tint color
  ///   - buttonTitle: Button title
  ///   - buttonAction: Button action
  convenience init(
    title: String,
    message: String? = nil,
    tintColor: UIColor? = nil,
    buttonTitle: String,
    buttonAction: (() -> Void)? = nil) {
    self.init(title: title, message: message, preferredStyle: .alert)
    
    let buttonAction = UIAlertAction(title: buttonTitle, style: .default) { _ in
      buttonAction?()
    }
    
    if let tintColor = tintColor {
      view.tintColor = tintColor
    }
    
    addAction(buttonAction)
  }
  
  /// Creates alert with two action button
  ///
  /// # Example
  /// ```
  /// let firstButtonAction = { print("It's work from left side!") }
  /// let secondButtonAction = { print("It's work from right side!") }
  /// let alert = UIAlertController(title: "Title", message: "Message", tintColor: .red, firstButtonTitle: "Cancel", firstButtonHandler: firstButtonAction, firstButtonStyle: .cancel, secondButtonTitle: "OK", secondButtonHandler: secondButtonAction, secondButtonStyle: .default)
  /// present(alert, animated: true)
  /// ```
  /// - Parameters:
  ///   - title: Alert title
  ///   - message: Alert body message
  ///   - tintColor: Alert elements tint color
  ///   - firstButtonTitle: Left side button title
  ///   - firstButtonAction: Left side button action
  ///   - firstButtonStyle: Left side button style
  ///   - secondButtonTitle: Right side button title
  ///   - secondButtonAction: Right side button action
  ///   - secondButtonStyle: Right side button style
  convenience init(
    title: String,
    message: String? = nil,
    tintColor: UIColor? = nil,
    firstButtonTitle: String,
    firstButtonAction: (() -> Void)? = nil,
    firstButtonStyle: UIAlertAction.Style = .default,
    secondButtonTitle: String,
    secondButtonAction: (() -> Void)? = nil,
    secondButtonStyle: UIAlertAction.Style = .default) {
    self.init(title: title, message: message, preferredStyle: .alert)
    
    let firstButtonAction = UIAlertAction(title: firstButtonTitle, style: firstButtonStyle) { _ in
      firstButtonAction?()
    }
    
    let secondButtonAction = UIAlertAction(title: secondButtonTitle, style: secondButtonStyle) { _ in
      secondButtonAction?()
    }
    
    if let tintColor = tintColor {
      view.tintColor = tintColor
    }
    
    addAction(firstButtonAction)
    addAction(secondButtonAction)
  }
}
