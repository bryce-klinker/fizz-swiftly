import XCTest
import UIKit
@testable import Fizzly

class FizzlyTests: XCTestCase {
    var service: FakeFizzBuzzService!
    
    override func setUp() {
        super.setUp()
        
        service = FakeFizzBuzzService()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testShouldShowValue() {
        service.setValue(value: 1)
        
        let controller = createController()
        tapUpdateButton(controller: controller)
        
        XCTAssertEqual(controller.valueLabel.text, "1")
    }
    
    func testShouldShowFizz() {
        service.setValue(value: 3)
        let controller = createController()
        tapUpdateButton(controller: controller)
        
        XCTAssertEqual(controller.valueLabel.text, "Fizz")
    }
    
    func createController() -> FizzBuzzController {
        let window = UIWindow()
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        let controller = storyboard.instantiateInitialViewController() as! FizzBuzzController
        controller.service = service
        
        window.addSubview(controller.view)
        RunLoop.current.run(until: Date())
        return controller
    }
    
    func tapUpdateButton(controller: FizzBuzzController) {
        controller.updateButton.sendActions(for: .touchUpInside)
        RunLoop.current.run(until: Date())
    }
}
