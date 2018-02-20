import Foundation

func fizzBuzz(value: CurrentValue) -> String {
    if (isDivisibleByThree(value: value)
        && isDivisibleByFive(value: value)) {
        return "FizzBuzz"
    }
    
    if (isDivisibleByThree(value: value)) {
        return "Fizz"
    }
    
    if (isDivisibleByFive(value: value)) {
        return "Buzz"
    }
    
    return String(value.value)
}

private func isDivisibleByThree(value: CurrentValue) -> Bool {
    return value.value % 3 == 0
}

private func isDivisibleByFive(value: CurrentValue) -> Bool {
    return value.value % 5 == 0
}
