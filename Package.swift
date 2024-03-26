// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPM",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "SwiftPM",
            targets: ["SwiftPM"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1"),
        
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.19.0")
    ],
    targets: [
        .target(
            name: "SwiftPM",
            dependencies: ["SnapKit",  "SDWebImage"]
        ),
        .testTarget(
            name: "SwiftPMTests",
            dependencies: ["SwiftPM"]
        ),
    ]
)
