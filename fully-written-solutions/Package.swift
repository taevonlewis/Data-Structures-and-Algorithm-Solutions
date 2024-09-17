// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "fully-written-solutions",
    // dependencies: [
    //     .package(url: "https://github.com/apple/swift-format.git", branch: "release/5.8"),
    // ],
    targets: [
        .executableTarget(
            name: "fully-written-solutions",
            dependencies: ["apple", "misc", "utilities"],
            path: "Sources",
            exclude: [
                "leetcode/cpp",
                "leetcode/python",
                "leetcode/swift",
            ],
            sources: ["main.swift"]
        ),
        .target(
            name: "apple",
            path: "Sources/apple"
        ),
        .target(
            name: "misc",
            path: "Sources/misc"
        ),
        .target(
            name: "utilities",
            path: "Sources/utilities"
        )
        // .target(
        //     name: "leetcode",
        //     path: "Sources/leetcode"
        // ),
    ]
)
