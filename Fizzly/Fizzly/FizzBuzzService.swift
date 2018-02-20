import Foundation
import Alamofire

protocol FizzBuzzService {
    func getValue(completion: @escaping (CurrentValue) -> ())
}

class HttpFizzBuzzService: FizzBuzzService {
    func getValue(completion: @escaping (CurrentValue) -> ()) {
        Alamofire.request("http://localhost:9000/").responseJSON { res in
            let json = try? JSONSerialization.jsonObject(with: res.data!, options: [])
            completion(json as! CurrentValue)
        }
    }
}
