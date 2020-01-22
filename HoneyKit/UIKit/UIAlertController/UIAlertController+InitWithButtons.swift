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
  ///   - title: The title of the alert
  ///   - message: The description of the alert
  ///   - tintColor: Tint color for alert elements
  ///   - buttonTitle: Title for button
  ///   - buttonAction: Action for button
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
  ///   - title: The title of the alert
  ///   - message: The description of the alert
  ///   - tintColor: Tint color for alert elements
  ///   - firstButtonTitle: Title for left side button
  ///   - firstButtonAction: Action for left side button
  ///   - firstButtonStyle: Style for left side button
  ///   - secondButtonTitle: Title for right side button
  ///   - secondButtonAction: Action for right side button
  ///   - secondButtonStyle: Style for right side button
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
