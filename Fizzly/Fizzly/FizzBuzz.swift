import Foundation

func fizzBuzz(value: CurrentValue) -> String {
    if (value.value % 3 == 0 && value.value % 5 == 0) {
        return "FizzBuzz"
    }
    
    if (value.value % 3 == 0) {
        return "Fizz"
    }
    
    if (value.value % 5 == 0) {
        return "Buzz"
    }
    
    return String(value.value)
}
