import Foundation
import XCTest
import XCTest_Gherkin
import Swifter
import Fizzly

class FizzBuzzStepDefiner : StepDefiner {
    open let app: XCUIApplication
    open let server: HttpServer
    
    required init(test: XCTestCase) {
        app = XCUIApplication()
        server = HttpServer()
        
        super.init(test: test)
    }
    
    override func defineSteps() {
        step("current value is '([0-9]*)'") { (matches: [String]) in
            try? self.server.start(9000)
            
            self.server[""] = { r in
                let value = matches.first!
                return .ok(.text("{ \"value\": \"\(value)\" }"))
            }
        }
        
        step("I open fizzly") {
            setupSnapshot(self.app)
            self.app.launch()
        }
        
        step("I get fizz buzz") {
            self.app.buttons["Update"].tap()
        }
        
        step("I should get '(.*)'") { (matches: [String]) in
            XCTAssertTrue(self.app.staticTexts[matches.first!].exists)
        }
    }
}
