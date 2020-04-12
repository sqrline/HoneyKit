//
//  UIView+ActivityIndicator.swift
//  HoneyKit
//
//  Created by Aleksey Pleshkov on 03.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

#if canImport(UIKit)
import UIKit

/// Adds/hides container with activity indicator in view
public extension UIView {
  
  // MARK: - ActivityIndicatorContainerView
  
  private class ActivityIndicatorContainerView: UIView {
    
    func configure(
      container view: UIView,
      backgroundColor: UIColor? = nil,
      color: UIColor = .black,
      style: UIActivityIndicatorView.Style? = nil) {
      
      let activityIndicator = UIActivityIndicatorView()
      
      alpha = 0
      translatesAutoresizingMaskIntoConstraints = false
      self.backgroundColor = backgroundColor ?? view.backgroundColor
      
      activityIndicator.translatesAutoresizingMaskIntoConstraints = false
      activityIndicator.color = color
      activityIndicator.startAnimating()
      
      if let style = style {
        activityIndicator.style = style
      }
      
      addSubview(activityIndicator)
      view.addSubview(self)
      
      NSLayoutConstraint.activate([
        leftAnchor.constraint(equalTo: view.leftAnchor),
        rightAnchor.constraint(equalTo: view.rightAnchor),
        topAnchor.constraint(equalTo: view.topAnchor),
        bottomAnchor.constraint(equalTo: view.bottomAnchor),
        //
        activityIndicator.centerYAnchor.constraint(equalTo: centerYAnchor),
        activityIndicator.centerXAnchor.constraint(equalTo: centerXAnchor)
      ])
    }
    
    func show(withDuration duration: TimeInterval?) {
      guard let duration = duration else {
        alpha = 1
        return
      }
      
      UIView.animate(withDuration: duration) { [weak self] in
        self?.alpha = 1
      }
    }
    
    func hide(withDuration duration: TimeInterval?) {
      guard let duration = duration else {
        removeFromSuperview()
        return
      }
      
      let animations: () -> Void = { [weak self] in
        self?.alpha = 0
      }
      
      let completion: (Bool) -> Void = { [weak self] _ in
        self?.removeFromSuperview()
      }
      
      UIView.animate(withDuration: duration, animations: animations, completion: completion)
    }
  }
  
  // MARK: - Public Methods
  
  /// Shows container with activity indicator in view
  ///
  /// # Example
  /// ```
  /// @IBOutlet weak var containerView: UIView!
  /// ...
  /// containerView.showActivityIndicator()
  /// containerView.showActivityIndicator(backgroundColor: .black, color: .white, style: .medium, withDuration: 0.5)
  /// ```
  /// - Parameters:
  ///   - backgroundColor: Container view background color
  ///   - color: Activity indicator color
  ///   - style: Activity indicator style
  ///   - duration: Show animation duration
  @discardableResult func showActivityIndicator(
    backgroundColor: UIColor? = nil,
    color: UIColor = .black,
    style: UIActivityIndicatorView.Style? = nil,
    withDuration duration: TimeInterval? = nil) -> UIView {
    
    let containerView = ActivityIndicatorContainerView()
    
    containerView.configure(container: self, backgroundColor: backgroundColor, color: color, style: style)
    containerView.show(withDuration: duration)
    
    return containerView
  }
  
  /// Hides container with activity indicator
  ///
  /// # Example
  /// ```
  /// @IBOutlet weak var containerView: UIView!
  /// ...
  /// containerView.hideActivityIndicator()
  /// containerView.hideActivityIndicator(withDuration: 0.5)
  /// ```
  /// - Parameter duration: Hide animation duration
  func hideActivityIndicator(withDuration duration: TimeInterval? = nil) {
    guard
      let firstSubview = subviews.first(where: { $0 is ActivityIndicatorContainerView }),
      let activityIndicatorContainerView = firstSubview as? ActivityIndicatorContainerView
      else { return }
    
    activityIndicatorContainerView.hide(withDuration: duration)
  }
}
#endif
