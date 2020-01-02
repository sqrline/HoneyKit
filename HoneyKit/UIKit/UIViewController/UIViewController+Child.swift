//
//  UIViewController+Child.swift
//  HoneyKit
//
//  Created by Vladimir Pchelyakov on 28.12.2019.
//  Copyright © 2019 SQR. All rights reserved.
//

import UIKit

public extension UIViewController {
  
  /// Adds a view controller as a child of the current view controller.
  ///
  /// # Example
  /// ```
  ///  @IBOutlet weak var containerView: UIView!
  ///  ...
  ///  let childViewController = SomeViewController()
  ///  addChild(viewController: childViewController, to: containerView)
  /// ```
  /// - Parameters:
  ///   - viewController: The view controller to add as a child.
  ///   - containerView: The container view for the child view controller's view.
  ///   - isUseConstaints: A Boolean value that determines whether viewcontroller's view attached by layout constaints to the container view.
  func addChild(viewController: UIViewController, to containerView: UIView, isUseConstaints: Bool = true) {
    addChild(viewController)
    containerView.addSubview(viewController.view)
    
    if isUseConstaints {
      viewController.view.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([
        viewController.view.leftAnchor.constraint(equalTo: containerView.leftAnchor),
        viewController.view.rightAnchor.constraint(equalTo: containerView.rightAnchor),
        viewController.view.topAnchor.constraint(equalTo: containerView.topAnchor),
        viewController.view.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
      ])
    }
    
    viewController.didMove(toParent: self)
  }

  /// Removes a child of the current view controller.
  ///
  /// - Parameter viewController: The child view controller to be removed.
  func removeChild(viewController: UIViewController) {
    viewController.willMove(toParent: nil)
    viewController.view.removeFromSuperview()
    viewController.removeFromParent()
  }

  /// Switch from one child to anoter.
  ///
  /// # Example
  /// ```
  ///  @IBOutlet weak var containerView: UIView!
  ///  ...
  ///  let firstViewController = FirstViewController()
  ///  addChild(viewController: firstViewController, to: containerView)
  ///  ...
  ///  let nextViewController = NextViewController()
  ///  switchChild(from: firstViewController, to: nextViewController, in: containerView)
  /// ```
  /// - Parameters:
  ///   - current: Current child view controller.
  ///   - next: New child view controller.
  ///   - containerView: The container view for the child view controller's view.
  ///   - isUseConstaints: A Boolean value that determines whether view controller's view attached by layout constaints to the container view.
  func switchChild(from current: UIViewController?, to next: UIViewController, in containerView: UIView, isUseConstaints: Bool = true) {
    current?.willMove(toParent: nil)
    current?.view.removeFromSuperview()
    current?.removeFromParent()
    
    addChild(next)
    view.addSubview(next.view)
    
    if isUseConstaints {
      next.view.translatesAutoresizingMaskIntoConstraints = false
      NSLayoutConstraint.activate([
        next.view.leftAnchor.constraint(equalTo: containerView.leftAnchor),
        next.view.rightAnchor.constraint(equalTo: containerView.rightAnchor),
        next.view.topAnchor.constraint(equalTo: containerView.topAnchor),
        next.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
      ])
    }
    
    next.didMove(toParent: self)
  }
}
