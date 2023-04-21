import Foundation

public protocol MathOperators {
  func plus(_ number: Self) -> Self
  func minus(_ number: Self) -> Self
  func times(_ number: Self) -> Self
  func div(_ number: Self) -> Self
  func isEqual(toNumber number: Self) -> Bool
  func isBiggerThan(_ number: Self) -> Bool
  func isSmallerThan(_ number: Self) -> Bool
  func isBiggerThanOrEqual(_ number: Self) -> Bool
  func isSmallerThanOrEqual(_ number: Self) -> Bool
}

public extension MathOperators where Self: BinaryFloatingPoint {
  
  func plus(_ number: Self) -> Self {
    return self + number
  }
  
  func minus(_ number: Self) -> Self {
    return self - number
  }
  
  func times(_ number: Self) -> Self {
    return self * number
  }
  
  func div(_ number: Self) -> Self {
    return self / number
  }
    
  func isEqual(toNumber number: Self) -> Bool {
    return self == number
  }
  
  func isBiggerThan(_ number: Self) -> Bool {
    return self > number
  }
  
  func isSmallerThan(_ number: Self) -> Bool {
    return self < number
  }
  
  func isBiggerThanOrEqual(_ number: Self) -> Bool {
    return self >= number
  }
  
  func isSmallerThanOrEqual(_ number: Self) -> Bool {
    return self <= number
  }


}

public extension MathOperators where Self: FixedWidthInteger {
  
  func plus(_ number: Self) -> Self {
    return self + number
  }
  
  func minus(_ number: Self) -> Self {
    return self - number
  }
  
  func times(_ number: Self) -> Self {
    return self * number
  }
  
  func div(_ number: Self) -> Self {
    return self / number
  }
  
  func isEqual(toNumber number: Self) -> Bool {
    return self == number
  }
  
  func isBiggerThan(_ number: Self) -> Bool {
    return self > number
  }

  func isSmallerThan(_ number: Self) -> Bool {
    return self < number
  }

  func isBiggerThanOrEqual(_ number: Self) -> Bool {
    return self >= number
  }

  func isSmallerThanOrEqual(_ number: Self) -> Bool {
    return self <= number
  }
}

extension Double: MathOperators { }
extension Int: MathOperators {}
extension Float: MathOperators {}

