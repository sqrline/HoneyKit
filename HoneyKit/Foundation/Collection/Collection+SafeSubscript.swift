//
//  Collection+SafeSubscript.swift
//  HoneyKit
//
//  Created by Vladimir Pchelyakov on 09.04.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

import Foundation

/// Returns the element at the specified index if it is within bounds, otherwise nil.
public extension Collection {
  
  /// Returns the element at the specified index if it is within bounds, otherwise nil.
  /// Safe way to get item by index.
  /// - Parameter index: Index of the desired item.
  /// - Returns: Item at the passed index.
  /// In case of failure returns nil.
  subscript (safe index: Index) -> Iterator.Element? {
    return indices.contains(index) ? self[index] : nil
  }
  
}
