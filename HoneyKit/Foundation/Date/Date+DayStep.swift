//
//  Date+DayStep.swift
//  HoneyKit
//
//  Created by Aleksey Pleshkov on 28.12.2019.
//  Copyright © 2019 SQR. All rights reserved.
//

import Foundation

public extension Date {
  
  // MARK: - Enums
  
  /// Direction for adding days
  enum StepDirection {
    case forward
    case backward
  }
  
  // MARK: - Public Methods
  
  /// Returns date after adding step to exists date based on direction
  ///
  /// # Example
  /// ```
  /// let currentDate = Date()
  /// let tomorrowDate = currentDate.step(.forward)
  /// let afterTomorrowDate = currentDate.step(.forward, count: 2)
  /// let yesterdayDate = currentDate.step(.backward)
  /// ```
  /// - Parameters:
  ///   - direction: Step direction
  ///   - count: Numbers of days for take a step
  /// - Returns: Returns date after step
  func step(_ direction: StepDirection, count: Int = 1) -> Date {
    let calendar = Calendar.current
    let stepValue = direction == .forward ? count : -count
    
    return calendar.date(byAdding: .day, value: stepValue, to: self) ?? self
  }
}
