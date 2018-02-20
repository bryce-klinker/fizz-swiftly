
import XCTest
import XCTest_Gherkin

class FizzlyUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    
    func testShouldShowFizz() {
        Given("a number web service that returns '3' in a JSON object")
        When("I tap the FizzBuzz button")
        Then("I see 'Fizz'")
    }
    
}
