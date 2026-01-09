//
// © 2021. yagom academy all rights reserved
// This tutorial is produced by Yagom Academy and is prohibited from redistributing or reproducing.
//

import Foundation

struct LottoMachine {
  // numbers가 유효한 lotto 번호인지 검증
  func isValidLottoNumbers(of numbers: [Int]) -> Bool {
    guard numbers.count == 6, Set(numbers).count == 6 else {
      return false
    }
    
    for num in numbers {
      guard 1...45 ~= num else {
        return false
      }
    }
    
    return true
  }
  
  // 랜덤으로 lotto 번호 6자리를 배열로 리턴
  func makeRandomLottoNumbersArray() -> [Int] {
    var numberSet: Set<Int> = []
    
    while numberSet.count < 6 {
      let randomNumber = Int.random(in: 1...45)
      numberSet.insert(randomNumber)
    }
    
    return Array(numberSet)
  }
  
  // 1등 번호와 사용자의 번호가 얼마나 일치하는지 리턴
  func countMatchingNumber(user: [Int], winner: [Int]) throws -> Int {
    guard isValidLottoNumbers(of: user) && isValidLottoNumbers(of: winner) else {
      throw LottoMachineError.invalidNumbers
    }
    
    let winNumbers = user.filter { winner.contains($0) }
    return winNumbers.count
  }
}

enum LottoMachineError: Error {
  case invalidNumbers
}

