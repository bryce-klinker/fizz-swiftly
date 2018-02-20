
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
        Given("current value is '3'")
        And("I open fizzly")
        When("I get fizz buzz")
        Then("I should get 'fizz'")
    }
    
}
