//
//  UIView+AddSubview.swift
//  HoneyKit
//
//  Created by Aleksey Pleshkov on 20.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

import UIKit

/// Adds view with all sides constraints for filling into superview
public extension UIView {
  
  /// Adds view with all sides constraints for filling into superview
  ///
  /// # Example
  /// ```
  /// @IBOutlet weak var containerView: UIView!
  /// ...
  /// let customView = UIView()
  /// containerView.addSubview(subviewWithFillConstraints: customView)
  /// ```
  /// - Parameter subview: The view to be added
  func addSubview(fillBy subview: UIView) {
    addSubview(subview)
    
    subview.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      subview.topAnchor.constraint(equalTo: topAnchor),
      subview.leadingAnchor.constraint(equalTo: leadingAnchor),
      subview.trailingAnchor.constraint(equalTo: trailingAnchor),
      subview.bottomAnchor.constraint(equalTo: bottomAnchor),
    ])
  }
}
