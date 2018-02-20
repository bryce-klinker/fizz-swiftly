import XCTest
import UIKit
@testable import Fizzly

class FizzlyTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testShouldShowFizz() {
        let window = UIWindow()
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        let controller = storyboard.instantiateViewController(withIdentifier: "FizzBuzzController") as! FizzBuzzController
        let service = FakeFizzBuzzService()
        service.setValue(value: CurrentValue(value: 1))
        
        window.addSubview(controller.view)
        RunLoop.current.run(until: Date())
        controller.service = service
        
        XCTAssertEqual(controller.valueLabel.text, "1")
    }
}

class FakeFizzBuzzService: FizzBuzService {
    var currentValue: CurrentValue!
    
    public init() {
        
    }
    
    func getValue() -> CurrentValue {
        return currentValue
    }
    
    func setValue(value: CurrentValue) {
        currentValue = value
    }
}
