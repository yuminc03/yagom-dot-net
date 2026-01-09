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
  
  func testExample() throws {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    // Any test you write for XCTest can be annotated as throws and async.
    // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
    // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
  }
  
  func testPerformanceExample() throws {
    // This is an example of a performance test case.
    measure {
      // Put the code you want to measure the time of here.
    }
  }
  
}
