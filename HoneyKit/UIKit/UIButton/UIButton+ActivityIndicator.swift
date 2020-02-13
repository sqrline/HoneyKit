//
//  UIButton+ActivityIndicator.swift
//  HoneyKit
//
//  Created by Aleksey Pleshkov on 12.02.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

import UIKit

/// Shows/hides activity indicator in button for indicate loading process
extension UIButton {
  
  // MARK: - Custom types
  
  /// Position for activity indicator in button
  enum ActivityIndicatorPositionType {
    /// Hides text, sets in center
    case center
    
    /// Sets to the left of the button text
    case label
  }
  
  // MARK: - Public Methods
  
  /// Shows activity indicator in button for indicate loading process
  /// - Parameters:
  ///   - position: Activity indicator position
  ///   - color: Color for activity indicator
  func showActivityIndicator(at position: ActivityIndicatorPositionType, color: UIColor = .white) {
    switch position {
    case .center:
      showActivityIndicatorCenter(color: color)
    case .label:
      showActivityIndicatorLabel(color: color)
    }
  }
  
  /// Hides activity indicator in button
  func hideActivityIndicator() {
    for activityIndicator in subviews where activityIndicator is UIActivityIndicatorView {
      let propertyAnimator = UIViewPropertyAnimator(duration: 0.3, curve: .easeInOut) { [weak self] in
        self?.titleLabel?.alpha = 1
        activityIndicator.alpha = 0
      }
      
      propertyAnimator.addCompletion { _ in
        activityIndicator.removeFromSuperview()
      }
      
      isEnabled = true
      propertyAnimator.startAnimation()
    }
  }
  
  // MARK: - Private Methods
  
  private func showActivityIndicatorCenter(color: UIColor) {
    let activityIndicator = UIActivityIndicatorView()
    let propertyAnimator = UIViewPropertyAnimator(duration: 0.3, curve: .easeInOut) { [weak self] in
      self?.titleLabel?.alpha = 0
      activityIndicator.alpha = 1
    }
    
    activityIndicator.translatesAutoresizingMaskIntoConstraints = false
    activityIndicator.color = color
    activityIndicator.alpha = 0
    activityIndicator.startAnimating()
    
    isEnabled = false
    addSubview(activityIndicator)
    
    NSLayoutConstraint.activate([
      activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor),
      activityIndicator.centerYAnchor.constraint(equalTo: centerYAnchor)
    ])
    
    propertyAnimator.startAnimation()
  }
  
  private func showActivityIndicatorLabel(color: UIColor) {
    guard let titleLabel = titleLabel else {
      return
    }
    
    let activityIndicator = UIActivityIndicatorView()
    let propertyAnimator = UIViewPropertyAnimator(duration: 0.3, curve: .easeInOut) {
      titleLabel.alpha = 0.5
      activityIndicator.alpha = 1
    }
    
    activityIndicator.translatesAutoresizingMaskIntoConstraints = false
    activityIndicator.color = color
    activityIndicator.alpha = 0
    activityIndicator.startAnimating()
    
    isEnabled = false
    addSubview(activityIndicator)
    
    NSLayoutConstraint.activate([
      activityIndicator.trailingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: -8),
      activityIndicator.centerYAnchor.constraint(equalTo: centerYAnchor)
    ])
    
    activityIndicator.layoutIfNeeded()
    propertyAnimator.startAnimation()
  }
}
