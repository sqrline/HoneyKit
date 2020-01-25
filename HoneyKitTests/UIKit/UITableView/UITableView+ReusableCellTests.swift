//
//  UICollectionView+ReusableCellTests.swift
//  HoneyKitTests
//
//  Created by Aleksey Pleshkov on 19.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

import XCTest

final class UITableView_ReusableCellTests: XCTestCase {
  
  // MARK: - Private Properties
  
  private var tableView: UITableView!
  
  // MARK: - Lifecycle
  
  override func setUp() {
    super.setUp()
    
    tableView = UITableView()
  }
  
  override func tearDown() {
    tableView = nil
    
    super.tearDown()
  }
  
  // MARK: - Dequeue Reusable Cell by class
  
  func testDequeueReusableCellByClass() {
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    
    let cell = tableView.dequeueReusableCell(byClass: UITableViewCell.self)
    
    XCTAssertNotNil(cell)
  }
  
  // MARK: - Dequeue Reusable Cell by class with index path
  
  func testDequeueReusableCellByClassWithIndexPath() {
    tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    
    let indexPath = IndexPath(row: 0, section: 0)
    let cell = tableView.dequeueReusableCell(byClass: UITableViewCell.self, for: indexPath)
    
    XCTAssertNotNil(cell)
  }
}
