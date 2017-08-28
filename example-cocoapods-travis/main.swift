//
//  main.swift
//  example-cocoapods-travis
//
//  Created by Nick Ver Voort on 8/28/17.
//  Copyright © 2017 Black Duck CoPilot. All rights reserved.
//

import Foundation

print("Hello arguments! ", terminator: "")

let arguments = CommandLine.arguments.dropFirst().joined(separator: " ");

print(arguments);
