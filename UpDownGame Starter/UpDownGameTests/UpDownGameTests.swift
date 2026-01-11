//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import XCTest
@testable import UpDownGame

class UpDownGameTests: XCTestCase {
  
  private var sut: UpDownGame!
  
  override func setUpWithError() throws {
    try super.setUpWithError()
    
    sut = UpDownGame()
  }
  
  override func tearDownWithError() throws {
    try super.tearDownWithError()
    
    sut = nil
  }
  
  // MARK: - compareValue
  
  func test_compareValue호출시_hitNumber가randomValue보다_클때_Down반환하는지() {
    // given
    let hitNumber = 10
    sut.randomValue = 5
    
    // when
    let result = sut.compareValue(with: hitNumber)
    
    // then
    XCTAssertEqual(result, .Down)
  }
  
  func test_compareValue호출시_hitNumber가randomValue보다_작을때_Up반환하는지() {
    // given
    let hitNumber = 5
    sut.randomValue = 10
    
    // when
    let result = sut.compareValue(with: hitNumber)
    
    // then
    XCTAssertEqual(result, .Up)
  }
}
