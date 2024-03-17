// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPM",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftPM",
            targets: ["SwiftPM"]
        ),
    ],
    dependencies: [ 
        
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.7.1"),
        .package(url: "https://github.com/JonasGessner/JGProgressHUD", from: "2.2.0"),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", from: "5.19.0")
    ],
    targets: [
        .target(
            name: "SwiftPM",
            dependencies: ["SnapKit", "JGProgressHUD", "SDWebImage"]
        ),
      
            
        .testTarget(
            name: "SwiftPMTests",
            dependencies: ["SwiftPM"]),
    ]
)
