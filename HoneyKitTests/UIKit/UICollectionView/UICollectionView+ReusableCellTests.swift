//
//  UICollectionView+ReusableCellTests.swift
//  HoneyKitTests
//
//  Created by Aleksey Pleshkov on 19.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

import XCTest

final class UICollectionView_ReusableCellTests: XCTestCase {
  
  // MARK: - Private Properties
  
  private var collectionView: UICollectionView!
  
  // MARK: - Lifecycle
  
  override func setUp() {
    super.setUp()
    
    collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
  }
  
  override func tearDown() {
    collectionView = nil
    
    super.tearDown()
  }

  // MARK: - Dequeue Reusable Cell by class with index path
  
  func testDequeueReusableCellByClassWithIndexPath() {
    collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "UICollectionViewCell")
    
    let indexPath = IndexPath(row: 0, section: 0)
    let cell = collectionView.dequeueReusableCell(byClass: UICollectionViewCell.self, for: indexPath)
    
    XCTAssertNotNil(cell)
  }
}
