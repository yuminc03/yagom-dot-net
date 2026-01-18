//
//  StrangeCalculatorTests.swift
//  StrangeCalculatorTests
//
//  Created by Yumin Chu on 1/9/26.
//

import XCTest
@testable import UnitTestSample

final class StrangeCalculatorTests: XCTestCase {
  
  var sut: StrangeCalculator!
  
  override func setUpWithError() throws {
    try super.setUpWithError()
    
    sut = StrangeCalculator()
  }
  
  override func tearDownWithError() throws {
    try super.tearDownWithError()
    
    sut = nil
  }
  
  func test_addNumbers() {
    // given
    let input = [3, 7, 23]
    
    // when
    let result = sut.addNumbers(of: input)
    
    // then
    XCTAssertEqual(result, 33)
  }
  
  func test_빈배열을전달했을때_0이나오는지() {
    // given
    let numbers = [Int]()
    
    //when
    let result = sut.addOddNumbers(of: numbers)
    
    // then
    XCTAssertEqual(result, 0)
  }
  
  func test_3을전달했을때_3이나오는지() {
    // given
    let numbers = [3]
    
    // when
    let result = sut.addOddNumbers(of: numbers)
    
    // then
    XCTAssertEqual(result, 3)
  }
  
  func test_addOddNumbers호출시_4와9를전달하면_9가나오는지() {
    // given
    let numbers = [4, 9]
    
    // when
    let result = sut.addOddNumbers(of: numbers)
    
    // then
    XCTAssertEqual(result, 9)
  }
}
