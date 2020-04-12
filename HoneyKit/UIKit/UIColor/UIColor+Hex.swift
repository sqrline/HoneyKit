//
//  UIColor+Hex.swift
//  HoneyKit
//
//  Created by Vladimir Pchelyakov on 12.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

#if canImport(UIKit)
import UIKit

/// Conveniece init color from hex string.
public extension UIColor {
  
  // MARK: - Initializers
  
  /// Conveniece init color from hex string.
  ///
  /// # Example
  /// ```
  ///  let redColor: UIColor? = UIColor(hexString: "ff0000")
  /// ```
  /// - Parameter hexString: Color's hex name.
  convenience init?(hexString: String) {
    let alpha: UInt64
    let rColor: UInt64
    let gColor: UInt64
    let bColor: UInt64
    
    let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
    var int = UInt64()
    Scanner(string: hex).scanHexInt64(&int)
    
    switch hex.count {
    case 3:
      (alpha, rColor, gColor, bColor) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
    case 6:
      (alpha, rColor, gColor, bColor) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
    case 8:
      (alpha, rColor, gColor, bColor) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
    default:
      return nil
    }
    
    self.init(
      red: CGFloat(rColor) / 255,
      green: CGFloat(gColor) / 255,
      blue: CGFloat(bColor) / 255,
      alpha: CGFloat(alpha) / 255)
  }
  
}
#endif
