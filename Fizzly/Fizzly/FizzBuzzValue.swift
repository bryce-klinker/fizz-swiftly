import Foundation

class FizzBuzzValue {
    open let value: Int
    
    init(value: Int) {
        self.value = value
    }
    
    static func fromString(value: String) -> FizzBuzzValue {
        return FizzBuzzValue(value: Int(value) ?? 0)
    }
}
