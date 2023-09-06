
// ===========================================================================
/// <summary>
/// OpenUrlTests.swift
/// OpenUrlTests
/// created by Mehrdad Soleimanimajd on 23.08.2023
/// </summary>
/// <created>ʆϒʅ, 23.08.2023</created>
/// <changed>ʆϒʅ, 06.09.2023</changed>
// ===========================================================================

import XCTest
@testable import OpenUrl

final class OpenUrlTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        XCTAssert(false, "resultsTo:")
        print("first Test")
    }
    
    func testSecond() throws {
        XCTAssert(true, "yes")
        print("second Test")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
