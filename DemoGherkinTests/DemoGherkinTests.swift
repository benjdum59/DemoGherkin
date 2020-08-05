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
    
    func test_false_false_1_argument() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "firstbool false, secondbool false with 1 argument", testCase: self)
    }
    
    func test_false_true_1_argument() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "firstbool false, secondbool true with 1 argument", testCase: self)
    }
    
    func test_true_false_1_argument() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "firstbool true, secondbool false with 1 argument", testCase: self)
    }
    
    func test_true_true_1_argument() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "firstbool true, secondbool true with 1 argument", testCase: self)
    }
    
    func test_false_false_outline() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "firstbool false, secondbool false with outline", testCase: self)
    }
    
    func test_true_false_outline() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "firstbool true, secondbool false with outline", testCase: self)
    }
    
    func test_false_true_outline() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "firstbool false, secondbool true with outline", testCase: self)
    }
    
    func test_true_true_outline() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "firstbool true, secondbool true with outline", testCase: self)
    }
    
    func test_for_false_results() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "false result", testCase: self)
    }
    
    func test_outline_all_together() {
        NativeRunner.runScenario(featureFile: "Demo.feature", scenario: "all together", testCase: self)
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
        step("FirstBool with argument ((true)|(false))") { (value: String) in
            switch value {
            case "true":
                self.data.firstBool = true
            case "false":
                self.data.firstBool = false
            default:
                XCTFail()
            }
        }
        step("SecondBool with argument ((true)|(false))") { (value: String) in
            switch value {
            case "true":
                self.data.secondBool = true
            case "false":
                self.data.secondBool = false
            default:
                XCTFail()
            }
        }
        step("FirstBool outline ((true)|(false))") { (value: String) in
            switch value {
            case "true":
                self.data.firstBool = true
            case "false":
                self.data.firstBool = false
            default:
                XCTFail()
            }
        }
        step("SecondBool outline ((true)|(false))") { (value: String) in
            switch value {
            case "true":
                self.data.secondBool = true
            case "false":
                self.data.secondBool = false
            default:
                XCTFail()
            }
        }
        step("Result outline should be ((true)|(false))") { (value: String) in
            switch value {
            case "true":
                XCTAssertTrue(self.data.result)
            case "false":
                XCTAssertFalse(self.data.result)
            default:
                XCTFail()
            }
        }
    }
}
