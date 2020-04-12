//
//  UIBarButtonItem+Badge.swift
//  HoneyKit
//
//  Created by Aleksey Pleshkov on 09.04.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

#if canImport(UIKit)
import UIKit

/// Shows notification badge on bar button
public extension UIBarButtonItem {
  
  // MARK: - Public Methods
  
  /// Configurates badge and set initial parameters.
  /// For set badge value call updateBadge method
  /// - Parameters:
  ///   - textColor: Badge text color
  ///   - backgroundColor: Badge background color
  func configureBadge(textColor: UIColor = .white, backgroundColor: UIColor = .red) {
    guard let view = value(forKey: "view") as? UIView else {
      return
    }
    let badgeLabel = BadgeLabel(parentFrame: view.frame, textColor: textColor, backgroundColor: backgroundColor)
    
    view.addSubview(badgeLabel)
  }
  
  /// Updates value on badge.
  /// For customization badge style call configureBadge method
  /// - Parameter value: Updated value. Set nil for hide badge.
  func updateBadge(_ value: String?) {
    guard
      let view = self.value(forKey: "view") as? UIView,
      let badgeLabel = view.subviews.first(where: { $0 is BadgeLabel }) as? BadgeLabel
      else {
        configureBadge()
        updateBadge(value)
        return
    }
    
    badgeLabel.badgeValue = value
  }
}

/// Class for custom badge label
fileprivate class BadgeLabel: UILabel {
  
  // MARK: - Public Properties
  
  /// Change this value for update badge text
  /// Set nil for hide badge
  var badgeValue: String? {
    didSet {
      updateBadgeValue()
    }
  }
  
  // MARK: - Private Properties
  
  /// Parent frame fo generate self size
  private let parentFrame: CGRect
  
  /// Width and height for badge label
  private let badgeLabelSize: CGFloat = 19
  
  /// Badge label offset relative to the button
  private let badgeLabelYOffset: CGFloat = 4
  
  /// Font for text in badge
  private let badgeLabelFont = UIFont.systemFont(ofSize: 11, weight: .bold)
  
  // MARK: - Init
  
  init(parentFrame: CGRect, textColor: UIColor, backgroundColor: UIColor) {
    self.parentFrame = parentFrame
    super.init(frame: .zero)
    
    configure(textColor: textColor, backgroundColor: backgroundColor)
  }
  
  required init?(coder: NSCoder) {
    parentFrame = .zero
    super.init(coder: coder)
  }
  
  // MARK: - Private Methods
  
  private func configure(textColor: UIColor, backgroundColor: UIColor) {
    self.textColor = textColor
    self.backgroundColor = backgroundColor
    
    frame = createLabelFrame()
    text = badgeValue
    textAlignment = .center
    font = badgeLabelFont
    
    layer.cornerRadius = badgeLabelSize / 2
    layer.masksToBounds = true
    layer.zPosition = 1
  }
  
  private func createLabelFrame() -> CGRect {
    guard let badgeValue = badgeValue else {
      return .zero
    }
    
    let characterCount = badgeValue.count - 1
    let width = badgeLabelSize + CGFloat(characterCount * 6)
    let updatedWidth = width > 28 ? 28 : width
    
    return CGRect(
      x: parentFrame.width / 2 - 4,
      y: badgeLabelYOffset,
      width: updatedWidth,
      height: badgeLabelSize)
  }
  
  private func updateBadgeValue() {
    frame = createLabelFrame()
    text = badgeValue
    isHidden = badgeValue == nil
  }
}
#endif
