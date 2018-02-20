import Foundation
@testable import Fizzly

class FakeFizzBuzzService: FizzBuzzService {
    var currentValue: CurrentValue!
    
    public init() {
        
    }
    
    func getValue() -> CurrentValue {
        return currentValue
    }
    
    func setValue(value: CurrentValue) {
        currentValue = value
    }
    
    func setValue(value: Int) {
        currentValue = CurrentValue(value: value)
    }
}
