//
//  String+Localized.swift
//  HoneyKit
//
//  Created by Vladimir Pchelyakov on 23.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

/// Returns an localized version of the string.
public extension String {
  
  /// Returns an localized version of the string.
  var localized: String {
    return NSLocalizedString(self, comment: "")
  }
  
}
