//
//  example_cocoapods_travis_test.swift
//  example-cocoapods-travis-test
//
//  Created by Nick Ver Voort on 7/24/19.
//  Copyright © 2019 Black Duck Copilot. All rights reserved.
//

import XCTest
import class Foundation.Bundle

final class example_cocoapods_travis_tests: XCTestCase {
    func testNoArguments() throws {
        // Some of the APIs that we use below are available in macOS 10.13 and above.
        guard #available(macOS 10.13, *) else {
            return
        }
        
        let fooBinary = productsDirectory.appendingPathComponent("example-cocoapods-travis")
        
        let process = Process()
        process.executableURL = fooBinary
        
        let pipe = Pipe()
        process.standardOutput = pipe
        
        try process.run()
        process.waitUntilExit()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)
        
        XCTAssertEqual(output, "Hello arguments! \n")
    }
    
    func testArguments() throws {
        // Some of the APIs that we use below are available in macOS 10.13 and above.
        guard #available(macOS 10.13, *) else {
            return
        }
        
        let fooBinary = productsDirectory.appendingPathComponent("example-cocoapods-travis")
        
        let process = Process()
        process.executableURL = fooBinary
        
        let pipe = Pipe()
        process.standardOutput = pipe
        
        process.arguments = ["arg1", "arg2"]
        try process.run()
        process.waitUntilExit()
        
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)
        
        XCTAssertEqual(output, "Hello arguments! arg1 arg2\n")
    }
    
    /// Returns path to the built products directory.
    var productsDirectory: URL {
        #if os(macOS)
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        fatalError("couldn't find the products directory")
        #else
        return Bundle.main.bundleURL
        #endif
    }
    
    static var allTests = [
        ("testNoArguments", testNoArguments),
        ("testArguments", testArguments),
    ]
}
