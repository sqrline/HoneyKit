//
//  String+HTML.swift
//  HoneyKit
//
//  Created by Vladimir Pchelyakov on 24.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

#if canImport(UIKit)
import UIKit

/// Converts html to an NSAttributedString with system iOS font.
public extension String {
  
  /// Converts html to an NSAttributedString with system iOS font.
  /// - Parameter fontSize: Standard text size that is not wrapped in html.
  /// - Returns: Attributed string that contains text and font from html code.
  /// In case of failure during conversion, will return nil.
  func htmlToAttributedString(fontSize: CGFloat) -> NSAttributedString? {
    let format = """
    <span style=\"font-family: '-apple-system', 'HelveticaNeue';
    font-size: \(UIFont.systemFont(ofSize: fontSize).pointSize)\">%@</span>
    """
  
    let modifiedFont = String(format: format, self)
    
    guard let data = modifiedFont.data(using: .unicode, allowLossyConversion: true) else { return nil }
    
    do {
      return try NSAttributedString(
      data: data,
      options: [
        .documentType: NSAttributedString.DocumentType.html,
        .characterEncoding: String.Encoding.utf8.rawValue
      ],
      documentAttributes: nil)
    } catch {
      return nil
    }
  }
}

#endif
