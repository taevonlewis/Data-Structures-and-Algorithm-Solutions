// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "fully-written-solutions",
    dependencies: [
        .package(url: "https://github.com/apple/swift-format.git", branch: "release/5.8"),
    ],
    targets: [
        .executableTarget(
            name: "fully-written-solutions",
            path: "Sources",
            sources: ["main.swift", "apple"]
        )
    ]
)
