//
//  main.swift
//  example-cocoapods-travis
//
//  Created by Nick Ver Voort on 7/24/19.
//  Copyright © 2019 Black Duck Copilot. All rights reserved.
//


print("Hello arguments! ", terminator: "")

let arguments = CommandLine.arguments.dropFirst().joined(separator: " ")
print(arguments)
