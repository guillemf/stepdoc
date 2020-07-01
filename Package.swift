// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "stepdoc",
    products: [
        .executable(name: "stepdoc", targets: ["stepdoc"]),
        .library(name: "stepdocLib", targets: ["stepdocLib"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-tools-support-core.git", .upToNextMinor(from: "0.0.1")),
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMinor(from: "0.0.1")),
    ],
    targets: [
        .target(
            name: "stepdocLib",
            dependencies: [
                    .product(name: "ArgumentParser", package: "swift-argument-parser"),
                    .product(name: "SwiftToolsSupport", package: "swift-tools-support-core"),
            ]),
        .target(
            name: "stepdoc",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "SwiftToolsSupport", package: "swift-tools-support-core"),
                "stepdocLib"
        ]),
        .testTarget(
            name: "stepdocTests",
            dependencies: ["stepdoc"]),
    ]
)
