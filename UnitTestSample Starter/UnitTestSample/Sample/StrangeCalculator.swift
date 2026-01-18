//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import Foundation

struct StrangeCalculator {
  func addNumbers(of numbers: [Int]) -> Int {
    return numbers.reduce(0, +)
  }
  
  // for TDD
  /// 배열의 모든 홀수의 합을 반환하는 함수
  func addOddNumbers(of numbers: [Int]) -> Int {
    var result = 0
    
    numbers.forEach {
      if $0 % 2 == 1 {
        result += $0
      }
    }
    
    return result
  }
  
  func addEvenNumbers(of numbers: [Int]) -> Int {
    return 0
  }
}
