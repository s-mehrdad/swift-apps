
// ===========================================================================
/// <summary>
/// OpenUrlUITestsLaunchTests.swift
/// OpenUrlUITest
/// created by Mehrdad Soleimanimajd on 23.08.2023
/// </summary>
/// <created>ʆϒʅ, 23.08.2023</created>
/// <changed>ʆϒʅ, 06.09.2023</changed>
// ===========================================================================

import XCTest

final class OpenUrlUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
