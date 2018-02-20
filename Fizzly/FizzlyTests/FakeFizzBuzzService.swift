import Foundation
@testable import Fizzly

class FakeFizzBuzzService: FizzBuzzService {
    var currentValue: FizzBuzzValue!
    
    public init() {
        
    }
    
    func getValue(completion: @escaping (FizzBuzzValue) -> ()) {
        completion(self.currentValue)
    }
    
    func setValue(value: FizzBuzzValue) {
        currentValue = value
    }
    
    func setValue(value: Int) {
        currentValue = FizzBuzzValue(value: value)
    }
}
