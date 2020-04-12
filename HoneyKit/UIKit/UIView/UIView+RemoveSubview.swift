//
//  UIView+RemoveSubview.swift
//  HoneyKit
//
//  Created by Aleksey Pleshkov on 20.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

#if canImport(UIKit)
import UIKit

/// Removes all subviews from current view
public extension UIView {
  
  /// Removes all subviews from current view
  ///
  /// # Example
  /// ```
  /// @IBOutlet weak var containerView: UIView!
  /// ...
  /// let firstView = UIView()
  /// let secondView = UIView()
  /// containerView.addSubview(firstView)
  /// containerView.addSubview(secondView)
  /// ...
  /// containerView.removeSubviews()
  /// ```
  func removeSubviews() {
    subviews.forEach { $0.removeFromSuperview() }
  }
}
#endif
