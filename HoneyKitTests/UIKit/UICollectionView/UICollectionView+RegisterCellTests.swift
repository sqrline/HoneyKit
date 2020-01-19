//
//  UICollectionView+RegisterCellTests.swift
//  HoneyKitTests
//
//  Created by Aleksey Pleshkov on 19.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

import XCTest

final class UICollectionView_RegisterCellTests: XCTestCase {
  
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
  
  // MARK: - Register cell by class
  
  func testRegisterCellByClass() {
    collectionView.register(byClass: UICollectionViewCell.self)
    
    let indexPath = IndexPath(item: 0, section: 0)
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UICollectionViewCell", for: indexPath)

    XCTAssertNotNil(cell)
  }
}
