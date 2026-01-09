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
  var lotto: LottoMachine!
  
  override func setUpWithError() throws {
    try super.setUpWithError()
    
    sut = StrangeCalculator()
    lotto = LottoMachine()
  }
  
  override func tearDownWithError() throws {
    try super.tearDownWithError()
    
    sut = nil
    lotto = nil
  }
  
  func test_addNumbers() {
    // given
    let input = [3, 7, 23]
    
    // when
    let result = sut.addNumbers(of: input)
    
    // then
    XCTAssertEqual(result, 33)
  }
  
  func test_isValidLottoNumbers호출시_6개보다적은숫자입력했을때_False를반환하는지() {
    // given
    let input = [3, 6, 9]
    
    // when
    let result = lotto.isValidLottoNumbers(of: input)
    
    // then
    XCTAssertFalse(result)
  }
  
  func test_isValidLottoNumbers호출시_6개보다많은숫자입력했을때_False를반환하는지() {
    // given
    let input = [3, 6, 9, 12, 15, 18, 21, 24]
    
    // when
    let result = lotto.isValidLottoNumbers(of: input)
    
    // then
    XCTAssertFalse(result)
  }
  
  func test_isValidLottoNumbers호출시_중복해서6개가되는_6개보다많은숫자를입력했을때_False를반환하는지() {
    // given
    let input = [3, 6, 9, 12, 15, 18, 15, 9]
    
    // when
    let result = lotto.isValidLottoNumbers(of: input)
    
    // then
    XCTAssertFalse(result)
  }
  
  func test_isValidLottoNumbers호출시_중복된숫자없이_6개숫자입력했을때_True를반환하는지() {
    // given
    let input = [3, 6, 9, 12, 15, 18]
    
    // when
    let result = lotto.isValidLottoNumbers(of: input)
    
    // then
    XCTAssertTrue(result)
  }
  
  func test_isValidLottoNumbers호출시_중복된숫자가있는_6개숫자입력했을때_False를반환하는지() {
    // given
    let input = [3, 6, 9, 9, 15, 18]
    
    // when
    let result = lotto.isValidLottoNumbers(of: input)
    
    // then
    XCTAssertFalse(result)
  }
  
  func test_isValidLottoNumbers호출시_1보다작은수를포함하는배열전달했을때_False를반환하는지() {
    // given
    let input = [0, 3, 6, 9, 12, 15]
    
    // when
    let result = lotto.isValidLottoNumbers(of: input)
    
    // then
    XCTAssertFalse(result)
  }
  
  func test_isValidLottoNumbers호출시_45보다큰수를포함하는배열전달했을때_False를반환하는지() {
    // given
    let input = [3, 6, 9, 12, 15, 50]
    
    // when
    let result = lotto.isValidLottoNumbers(of: input)
    
    // then
    XCTAssertFalse(result)
  }
  
  func test_isValidLottoNumbers호출시_모든수가1부터45범위에포함되는배열전달했을때_True를반환하는지() {
    // given
    let input = [1, 5, 15, 25, 35, 45]
    
    // when
    let result = lotto.isValidLottoNumbers(of: input)
    
    // then
    XCTAssertTrue(result)
  }
  
  func test_makeRandomLottoNumbersArray_반환배열이유효한지() {
    // given
    let randomNumbers = lotto.makeRandomLottoNumbersArray()
    
    // when
    let result = lotto.isValidLottoNumbers(of: randomNumbers)
    
    // then
    XCTAssertTrue(result)
  }
  
  func test_countMatchingNumber_몇개의번호를맞추었는지() throws {
    // given
    let randomNumbers = lotto.makeRandomLottoNumbersArray()
    let winnerNumbers = lotto.makeRandomLottoNumbersArray()
    
    // when
    let result = try lotto.countMatchingNumber(
      user: randomNumbers,
      winner: winnerNumbers
    )
    
    // then
    XCTAssertNoThrow(result)
  }
}
