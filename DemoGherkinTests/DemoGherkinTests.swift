//
//  DemoGherkinTests.swift
//  DemoGherkinTests
//
//  Created by Benjamin Dumont on 05/08/2020.
//  Copyright © 2020 Axa France. All rights reserved.
//

import XCTest
import XCTest_Gherkin
@testable import DemoGherkin

class DemoGherkinTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_init() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "Init", testCase: self)
    }
    
    func test_false_false() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "firstbool false, secondbool false", testCase: self)

    }
    
    func test_false_true() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "firstbool false, secondbool true", testCase: self)
    }
    
    func test_true_false() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "firstbool true, secondbool false", testCase: self)
    }
    
    func test_true_true() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "firstbool true, secondbool true", testCase: self)
    }
}

fileprivate final class StepsDefinition: StepDefiner {
    
    var data = DemoData()
    
    override func defineSteps() {
        step("FirstBool false") {
            self.data.firstBool = false
        }
        step("SecondBool false") {
            self.data.secondBool = false
        }
        step("FirstBool true") {
            self.data.firstBool = true
        }
        step("SecondBool true") {
            self.data.secondBool = true
        }
        step("Data initialized") {
            self.data = DemoData()
        }
        step("Result should be false") {
            XCTAssertFalse(self.data.result)
        }
        step("Result should be true") {
            XCTAssertTrue(self.data.result)
        }
    }
}
