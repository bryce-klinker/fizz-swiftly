import Foundation

func fizzBuzz(value: CurrentValue) -> String {
    if (value.value % 3 == 0) {
        return "Fizz"
    } else if (value.value % 5 == 0) {
        return "Buzz"
    }else {
        return String(value.value)
    }
}
