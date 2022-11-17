// swift-tools-version:5.7

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
            url: "https://github.com/codeface-io/SwiftObserver.git",
            exact: "7.0.3"
        ),
        .package(
            url: "https://github.com/flowtoolz/SwiftyToolz.git",
            exact: "0.1.1"
        ),
    ],
    targets: [
        .target(
            name: "SwiftUIToolz",
            dependencies: [
                .product(name: "CombineObserver",
                         package: "SwiftObserver"),
                "SwiftObserver",
                "SwiftyToolz"
            ],
            path: "Code/SwiftUIToolz"
        ),
    ]
)
