//
//  UIButton+SetTitle.swift
//  HoneyKit
//
//  Created by Vladimir Pchelyakov on 18.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

import UIKit

public extension UIButton {
  
  /// Sets title with animation.
  ///
  /// # Example
  /// ```
  /// @IBOutlet weak var someButton: UIButton!
  /// ...
  /// // Sets title with default settings
  /// someButton.setTitleWithAnimation(title: "New title", completion: nil)
  ///
  /// // Sets title with custom settings
  ///  someButton.setTitleWithAnimation(
  ///    title: "New title",
  ///    color: .red,
  ///    animationDuration: 1.5,
  ///    animationOption: .curveEaseIn) {
  ///      print("Animation done")
  ///  }
  /// ```
  /// - Parameters:
  ///   - title: New title.
  ///   - color: New title color. Pass nil if you dont want to change current title color. Nil by default.
  ///   - animationDuration: Animation duration time.
  ///   - animationOption: Type of animation transition. By default smooth transition from one title to the next.
  ///   - completion: A block object to be executed when the animation sequence ends.
  func setTitleWithAnimation(
    title: String,
    color: UIColor? = nil,
    animationDuration: TimeInterval = 0.3,
    animationOption: UIView.AnimationOptions = .transitionCrossDissolve,
    completion: (() -> Void)?) {
    
    let animation = { [weak self] in
      self?.setTitle(title, for: .normal)
      if let color = color {
        self?.setTitleColor(color, for: .normal)
      }
    }
    
    let completion: (Bool) -> Void = { isCompleted in
      if isCompleted {
        completion?()
      }
    }
    
    UIView.transition(
      with: self,
      duration: animationDuration,
      options: animationOption,
      animations: animation,
      completion: completion)
  }
  
}
