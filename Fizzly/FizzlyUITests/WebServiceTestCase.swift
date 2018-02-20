import Foundation
import XCTest
import Dispatch
import Swifter

class WebServiceTestCase : XCTestCase {
    open let server = HttpServer()
        
    func startServer() throws {
        try server.start(9000)
    }
    
    func stopServer() {
        server.stop()
    }
}
