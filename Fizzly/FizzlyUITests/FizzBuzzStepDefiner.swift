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
        self.app.launch()
        server = HttpServer()
        
        super.init(test: test)
    }
    
    override func defineSteps() {
        step("a number web service that returns '([0-9]*)' in a JSON object") { (matches: [String]) in
            try? self.server.start(9000)
            
            self.server[""] = { r in
                let value = matches.first!
                return .ok(.text("{ \"value\": \"\(value)\" }"))
            }
        }
        
        step("I tap the FizzBuzz button") {
            self.app.buttons["Update"].tap()
        }
        
        step("I see '(.*)'") { (matches: [String]) in
            XCTAssertTrue(self.app.staticTexts[matches.first!].exists)
        }
    }
}
