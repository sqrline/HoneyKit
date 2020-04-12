//
//  UIView+InitFromXib.swift
//  HoneyKit
//
//  Created by Vladimir Pchelyakov on 09.02.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

#if canImport(UIKit)
import UIKit

/// Instantiates view from xib.
public extension UIView {
  
  /// Instantiates view from xib.
  ///
  /// - Important: Class name, xib file name, root view's (in interface builder) custom class type must have same name.
  /// Example: class CustomView, CustomView.xib, interface builder -> root view's custom class type - CustomView
  ///
  /// # Example
  /// ```
  /// let customView = CustomView.instantiate()
  /// // Instance of CustomView
  /// ```
  /// - Returns: View from xib.
  static func instantiate() -> Self {
    let name = String(describing: self)
    let nib = UINib(nibName: name, bundle: nil)
    
    guard let view = nib.instantiate(withOwner: nil, options: nil).first as? Self else {
      fatalError("Unexpected view \(name)")
    }
    
    return view
  }
}
#endif
