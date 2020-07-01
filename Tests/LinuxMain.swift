import XCTest

import stepdocTests

var tests = [XCTestCaseEntry]()
tests += stepdocTests.allTests()
XCTMain(tests)
