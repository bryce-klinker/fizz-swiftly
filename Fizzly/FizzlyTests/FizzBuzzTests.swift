import Foundation
import XCTest
@testable import Fizzly

class FizzBuzzTests: XCTestCase {
    func testShouldReturnValueAsString() {
        let value = FizzBuzzValue(value: 4)
        
        let actual = fizzBuzz(value: value)
        XCTAssertEqual("4", actual)
    }
    
    func testShouldReturnFizz() {
        let value = FizzBuzzValue(value: 3)
        
        let actual = fizzBuzz(value: value)
        XCTAssertEqual("Fizz", actual)
    }
    
    func testShouldReturnBuzz() {
        let value = FizzBuzzValue(value: 5)
        
        let actual = fizzBuzz(value: value)
        XCTAssertEqual("Buzz", actual)
    }
    
    func testShouldReturnFizzBuzz() {
        let value = FizzBuzzValue(value: 15)
        
        let actual = fizzBuzz(value: value)
        XCTAssertEqual("FizzBuzz", actual)
    }
}
