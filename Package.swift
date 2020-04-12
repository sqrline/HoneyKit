// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HoneyKit",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "HoneyKit", targets: ["HoneyKit"])
    ],
    dependencies: [],
    targets: [
        .target(name: "HoneyKit", dependencies: []),
        .testTarget(name: "HoneyKitTests", dependencies: ["HoneyKit"], path: "Tests")
    ]
)
