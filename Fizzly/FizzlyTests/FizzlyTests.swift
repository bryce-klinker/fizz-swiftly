import XCTest
import UIKit
@testable import Fizzly

class FizzlyTests: XCTestCase {
    var controller: ViewController
    
    override func setUp() {
        super.setUp()
        
        let bundle = Bundle(for: type(of: self))
        
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        controller = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
