import Foundation

protocol FizzBuzzService {
    func getValue() -> CurrentValue
}

class HttpFizzBuzzService: FizzBuzzService {
    func getValue() -> CurrentValue {
        return CurrentValue(value: 0)
    }
}
