import Foundation
import Alamofire

protocol FizzBuzzService {
    func getValue(completion: (CurrentValue) -> ())
}

class HttpFizzBuzzService: FizzBuzzService {
    func getValue(completion: (CurrentValue) -> ()) {
        
    }
}
