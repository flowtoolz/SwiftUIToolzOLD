// swift-tools-version:5.4.0

import PackageDescription

let package = Package(
    name: "SwiftUIToolz",
    platforms: [
        .iOS(.v13), .macOS(.v10_15), .tvOS(.v13), .watchOS(.v6)
    ],
    products: [
        .library(
            name: "SwiftUIToolz",
            targets: ["SwiftUIToolz"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/flowtoolz/SwiftObserver.git",
            .branch("master")
        ),
        .package(
            url: "https://github.com/flowtoolz/SwiftyToolz.git",
            .branch("master")
        ),
    ],
    targets: [
        .target(
            name: "SwiftUIToolz",
            dependencies: ["SwiftObserver", "SwiftyToolz"],
            path: "Code/SwiftUIToolz"
        ),
    ]
)
