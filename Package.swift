// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftLocation",
    platforms: [.iOS("10.0")],
    products: [
        .library(
            name: "SwiftLocation",
            targets: ["SwiftLocation"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", .exact("5.0.0")),
    ],
    targets: [
        .target(
            name: "SwiftLocation",
            dependencies: ["SwiftyJSON"],
            path: "Sources"
        ),
        .testTarget(
            name: "SwiftLocationTests",
            dependencies: ["SwiftLocation"],
            path: "Tests"
        ),
    ]
)