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
    
    func testShouldShowValue() {
        let service = FakeFizzBuzzService()
        service.setValue(value: CurrentValue(value: 1))
        
        let window = UIWindow()
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        let controller = storyboard.instantiateInitialViewController() as! FizzBuzzController
        controller.service = service
        
        window.addSubview(controller.view)
        RunLoop.current.run(until: Date())
        
        XCTAssertEqual(controller.valueLabel.text, "1")
    }
    
    func testShouldShowFizz() {
        let service = FakeFizzBuzzService()
        service.setValue(value: CurrentValue(value: 3))
        
        let window = UIWindow()
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        let controller = storyboard.instantiateInitialViewController() as! FizzBuzzController
        controller.service = service
        
        window.addSubview(controller.view)
        RunLoop.current.run(until: Date())
        
        XCTAssertEqual(controller.valueLabel.text, "Fizz")
    }
    
    func testShouldUpdateToNewValue() {
        let service = FakeFizzBuzzService()
        service.setValue(value: CurrentValue(value: 3))
        
        let window = UIWindow()
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        let controller = storyboard.instantiateInitialViewController() as! FizzBuzzController
        controller.service = service
        
        window.addSubview(controller.view)
        RunLoop.current.run(until: Date())
        
        service.setValue(value: CurrentValue(value: 4))
        controller.updateButton.sendActions(for: .touchUpInside)
        RunLoop.current.run(until: Date())
        
        XCTAssertEqual(controller.valueLabel.text, "4")
    }
}

class FakeFizzBuzzService: FizzBuzzService {
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
