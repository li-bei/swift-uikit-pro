// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "UIKitPro",
    products: [
        .library(name: "UIKitPro", targets: ["UIKitPro"]),
    ],
    targets: [
        .target(name: "UIKitPro", swiftSettings: [.enableExperimentalFeature("StrictConcurrency=complete")]),
    ]
)
