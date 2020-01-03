//
//  Date+Month.swift
//  HoneyKit
//
//  Created by Aleksey Pleshkov on 30.12.2019.
//  Copyright © 2019 SQR. All rights reserved.
//

import Foundation

/// Returns start/end day of month
public extension Date  {
  
  // MARK: - Public Properties
  
  /// Returns start of current month date
  ///
  /// ```
  /// let currentDate = Date() // 24-12-2019
  /// let startOfMonth = currentDate.startOfMonth // 01-12-2019
  /// ```
  var startOfMonth: Date {
    let calendar = Calendar.current
    let startOfDay = calendar.startOfDay(for: self)
    let components = calendar.dateComponents([.year, .month], from: startOfDay)
    
    return calendar.date(from: components) ?? Date()
  }
  
  /// Returns end of current month date
  ///
  /// ```
  /// let currentDate = Date() // 24-12-2019
  /// let endOfMonth = currentDate.endOfMonth // 31-12-2019
  /// ```
  var endOfMonth: Date {
    let calendar = Calendar.current
    let startOfDay = calendar.startOfDay(for: self)
    let startOfMonthComponets = calendar.dateComponents([.year, .month], from: startOfDay)
    let startOfMonth = calendar.date(from: startOfMonthComponets) ?? Date()
    let components = DateComponents(month: 1, day: -1)
    
    return calendar.date(byAdding: components, to: startOfMonth) ?? Date()
  }
}
