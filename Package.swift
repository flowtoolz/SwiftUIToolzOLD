// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "SwiftUIToolzOLD",
    platforms: [
        .iOS(.v13), .macOS(.v10_15), .tvOS(.v13), .watchOS(.v6)
    ],
    products: [
        .library(
            name: "SwiftUIToolzOLD",
            targets: ["SwiftUIToolzOLD"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/codeface-io/SwiftObserver.git",
            exact: "8.0.0"
        ),
        .package(
            url: "https://github.com/flowtoolz/SwiftyToolz.git",
            exact: "0.5.1"
        ),
    ],
    targets: [
        .target(
            name: "SwiftUIToolzOLD",
            dependencies: [
                .product(name: "CombineObserver",
                         package: "SwiftObserver"),
                "SwiftObserver",
                "SwiftyToolz"
            ],
            path: "Code"
        ),
    ]
)
