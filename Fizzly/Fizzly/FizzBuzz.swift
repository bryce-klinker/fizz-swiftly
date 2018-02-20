import Foundation

func fizzBuzz(value: CurrentValue) -> String {
    if (value.value % 3 == 0) {
        return "Fizz"
    } else {
        return String(value.value)
    }
}
