import Foundation

private let Fizz = "Fizz"
private let Buzz = "Buzz"

func fizzBuzz(value: FizzBuzzValue) -> String {
    if (isDivisibleByThree(value: value)
        && isDivisibleByFive(value: value)) {
        return "\(Fizz)\(Buzz)"
    }
    
    if (isDivisibleByThree(value: value)) {
        return Fizz
    }
    
    if (isDivisibleByFive(value: value)) {
        return Buzz
    }
    
    return String(value.value)
}

private func isDivisibleByThree(value: FizzBuzzValue) -> Bool {
    return value.value % 3 == 0
}

private func isDivisibleByFive(value: FizzBuzzValue) -> Bool {
    return value.value % 5 == 0
}
