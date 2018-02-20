import Foundation
import Alamofire

protocol FizzBuzzService {
    func getValue(completion: @escaping (CurrentValue) -> ())
}

class HttpFizzBuzzService: FizzBuzzService {
    func getValue(completion: @escaping (CurrentValue) -> ()) {
        Alamofire.request("http://127.0.0.1:9000/").responseJSON { res in
            let json = res.result.value as? Dictionary<String, AnyObject>
            
            let jsonValue = json!["value"] as! String
            let value = Int(jsonValue)
            completion(CurrentValue(value: value!))
        }
    }
}
