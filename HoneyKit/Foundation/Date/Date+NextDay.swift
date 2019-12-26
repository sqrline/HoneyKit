//
//  Date+NextDay.swift
//  HoneyKit
//
//  Created by Aleksey Pleshkov on 26.12.2019.
//  Copyright © 2019 SQR. All rights reserved.
//

import Foundation

public extension Date {
  
  private var calendar: Calendar {
    return Calendar.current
  }
  
  /// Returns new date after added one day to exists date
  ///
  /// # Example
  /// ```
  /// let currentDate = Date()
  /// let tomorrowDate = currentDate.nextDay
  /// ```
  var nextDay: Date {
    return calendar.date(byAdding: .day, value: 1, to: self) ?? self
  }
  
  /// Returns new date after added days by quantity to exists date
  ///
  /// # Example
  /// ```
  /// let currentDate = Date()
  /// let afterTomorrowDate = currentDate.nextDate(add: 2)
  /// ```
  /// - Parameter days: Quantity days for add to exists date
  /// - Returns: A new date by quantity to exists date
  func nextDay(add days: Int) -> Date {
    return calendar.date(byAdding: .day, value: days, to: self) ?? self
  }
}
