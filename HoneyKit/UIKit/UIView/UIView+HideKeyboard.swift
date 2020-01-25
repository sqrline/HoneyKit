//
//  UIView+HideKeyboard.swift
//  HoneyKit
//
//  Created by Vladimir Pchelyakov on 04.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

import UIKit

/// Hides keyboard if tap on current view's area.
public extension UIView {

  /// Hides keyboard if tap on current view's area.
  ///
  /// # Example
  /// ```
  ///  // Hides keyboard when tap on current view's area
  ///  // or on any subview of current view.
  ///  view.hideKeyboardOnTap()
  ///
  ///  // Hides keyboard only if tap on current view's area where no subview placed.
  ///  // If current view contain buttons, labels, etc, and user tap on it - keyboard will not hide.
  ///  view.hideKeyboardOnTap(isSubviewsCancelsTouches: true)
  /// ```
  /// - Parameter isSubviewsCancelsTouches: A Boolean value that determines whether the keyboard hides when tap on some subview of current view.
  /// Pass false to hide keyboard when tap on current view's area and on any subview of current view.
  /// Pass true to hide keyboard only if tap on current view's area where no subview placed.
  func hideKeyboardOnTap(isSubviewsCancelsTouches: Bool = false) {
    let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(endEditing))
    tapGestureRecognizer.cancelsTouchesInView = isSubviewsCancelsTouches
    
    self.addGestureRecognizer(tapGestureRecognizer)
  }
  
}
