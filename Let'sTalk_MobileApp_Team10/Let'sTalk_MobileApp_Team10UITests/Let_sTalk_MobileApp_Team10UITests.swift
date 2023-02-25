//
//  Let_sTalk_MobileApp_Team10UITests.swift
//  Let'sTalk_MobileApp_Team10UITests
//
//  Created by Krishna Sai  on 2/24/23.
//

import XCTest
import SwiftUI

@testable import Let_sTalk_MobileApp_Team10

final class Page3ViewTests: XCTestCase {
    func testPage3View() throws {
        // Create an instance of the page3View view
        
        XCUIApplication()/*@START_MENU_TOKEN@*/.otherElements["card:ASU.Let-sTalk-MobileApp-Team10:sceneID:ASU.Let-sTalk-MobileApp-Team10-06F0ACA1-F49D-4E0F-BCA7-2939F272E0C5"].scrollViews/*[[".windows[\"SBSwitcherWindow:Main\"]",".otherElements[\"AppSwitcherContentView\"]",".otherElements[\"Let'sTalk_MobileApp_Team10\"].scrollViews",".otherElements[\"card:ASU.Let-sTalk-MobileApp-Team10:sceneID:ASU.Let-sTalk-MobileApp-Team10-06F0ACA1-F49D-4E0F-BCA7-2939F272E0C5\"].scrollViews",".scrollViews"],[[[-1,3],[-1,2],[-1,1,2],[-1,0,1]],[[-1,3],[-1,2],[-1,1,2]],[[-1,4],[-1,3],[-1,2]]],[0]]@END_MENU_TOKEN@*/.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element(boundBy: 0).tap()
        //let app = XCUIApplication()
        //app.launch()
        
                //app.textFields("Name").tap()
        
        let page3View = page3View()

        // Add the page3View view to a test host view
        let hostingController = UIHostingController(rootView: page3View)

        // Set the size of the test host view
        hostingController.view.frame = CGRect(x: 0, y: 0, width: 320, height: 640)

        // Ensure that the view is loaded
        XCTAssertNotNil(hostingController.view)

        // Test that the name text field is present
        let nameTextField = try XCTUnwrap(hostingController.view.viewWithTag(1) as? UITextField)
        XCTAssertEqual(nameTextField.placeholder, "Enter your name")

        // Test that the age text field is present
        let ageTextField = try XCTUnwrap(hostingController.view.viewWithTag(2) as? UITextField)
        XCTAssertEqual(ageTextField.placeholder, "Enter your age")

        // Test that the gender picker is present
        let genderPicker = try XCTUnwrap(hostingController.view.viewWithTag(3) as? UIPickerView)
        XCTAssertEqual(genderPicker.numberOfComponents, 1)

        // Test that the email text field is present
        let emailTextField = try XCTUnwrap(hostingController.view.viewWithTag(4) as? UITextField)
        XCTAssertEqual(emailTextField.placeholder, "Enter your email")

        // Test that the phone text field is present
        let phoneTextField = try XCTUnwrap(hostingController.view.viewWithTag(5) as? UITextField)
        XCTAssertEqual(phoneTextField.placeholder, "Enter your phone number")

        // Test that the password text field is present
        let passwordTextField = try XCTUnwrap(hostingController.view.viewWithTag(6) as? UITextField)
        XCTAssertEqual(passwordTextField.placeholder, "Enter your password")

        // Test that the re-enter password text field is present
        let reEnterPasswordTextField = try XCTUnwrap(hostingController.view.viewWithTag(7) as? UITextField)
        XCTAssertEqual(reEnterPasswordTextField.placeholder, "Enter your password")

        // Test that the register button is present
        let registerButton = try XCTUnwrap(hostingController.view.viewWithTag(8) as? UIButton)
        XCTAssertEqual(registerButton.titleLabel?.text, "Register")
    }
}
