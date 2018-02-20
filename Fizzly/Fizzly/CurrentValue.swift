import Foundation

class CurrentValue {
    open let value: Int
    
    init(value: Int) {
        self.value = value
    }
    
    static func fromString(value: String) -> CurrentValue {
        return CurrentValue(value: Int(value) ?? 0)
    }
}
