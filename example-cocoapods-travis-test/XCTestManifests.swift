//
//  XCTestManifests.swift
//  example-cocoapods-travis-test
//
//  Created by Nick Ver Voort on 7/24/19.
//  Copyright © 2019 Black Duck Copilot. All rights reserved.
//

import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(example_cocoapods_travis_test.allTests),
    ]
}
#endif
