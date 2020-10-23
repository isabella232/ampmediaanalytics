// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "9.1.0"

let package = Package(
    name: "AmpMediaAnalytics",
    platforms: [
        .iOS(.v12), .tvOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AmpMediaAnalytics",
            targets: ["AmpMediaAnalytics"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/akamai/ampcore-package", from: Version(version)!),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "AmpMediaAnalytics",
            url: "https://mdtp-a.akamaihd.net/amp-ios-sdk/frameworks/\(version)/AmpMediaAnalytics.zip",
            checksum: "d76dd971b280211c65132bb7c87da71d774f1b9e7f4a2f5a9be3c5d1cd632cff"
        ),
    ]
)
