//
//  Collection+IsNotEmpty.swift
//  HoneyKit
//
//  Created by Vladimir Pchelyakov on 22.02.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

import Foundation

/// Indicating whether the collection is not empty.
public extension Collection {
  
  /// A Boolean value indicating whether the collection is not empty.
  ///
  /// # Example
  /// ```
  /// let array = [1, 2, 3]
  /// let isArrayNotEmpty = array.isNotEmpty // true
  /// ```
  var isNotEmpty: Bool {
    return !self.isEmpty
  }
  
}
