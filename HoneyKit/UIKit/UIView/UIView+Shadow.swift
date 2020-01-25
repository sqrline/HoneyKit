//
//  UIView+Shadow.swift
//  HoneyKit
//
//  Created by Vladimir Pchelyakov on 24.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

import UIKit

/// Drops shadow from the current view.
public extension UIView {
  
  /// Drops shadow from the current view.
  /// - Parameters:
  ///   - shadowOpacity: The opacity of the layer’s shadow.
  ///   - shadowRadius: The blur radius (in points) used to render the layer’s shadow.
  ///   - shadowColor: Shadow color.
  ///   - shadowOffset: The offset (in points) of the layer’s shadow.
  func dropShadow(
    shadowOpacity: Float = 0.1,
    shadowRadius: CGFloat = 4,
    shadowColor: UIColor = .black,
    shadowOffset: CGSize = .zero) {
    
    layer.shadowRadius = shadowRadius
    layer.shadowOpacity = shadowOpacity
    layer.shadowColor = shadowColor.cgColor
    layer.shadowOffset = shadowOffset
    layer.shadowPath = UIBezierPath(
      roundedRect: bounds,
      cornerRadius: layer.cornerRadius).cgPath
  }
  
}
