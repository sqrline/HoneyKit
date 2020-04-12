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
