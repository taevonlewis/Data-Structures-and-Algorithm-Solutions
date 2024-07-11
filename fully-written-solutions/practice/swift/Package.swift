// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version:5.3
// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "swift",
    dependencies: [
        .package(url: "https://github.com/apple/swift-format.git", branch: "release/5.8"),
    ],
    targets: [
        .executableTarget(
            name: "swift",
            dependencies: [],
            path: "Sources",
            sources: ["swift"]
        ),
    ]
)
