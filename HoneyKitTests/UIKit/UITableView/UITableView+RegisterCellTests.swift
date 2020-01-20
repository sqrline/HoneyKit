//
//  UITableView+RegisterCellTests.swift
//  HoneyKitTests
//
//  Created by Aleksey Pleshkov on 19.01.2020.
//  Copyright © 2020 SQR. All rights reserved.
//

import XCTest

final class UITableView_RegisterCellTests: XCTestCase {
  
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
  
  // MARK: - Register cell by class
  
  func testRegisterCellByClass() {
    tableView.register(byClass: UITableViewCell.self)
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")

    XCTAssertNotNil(cell)
  }
}
