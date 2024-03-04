// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-uikit-pro",
    products: [
        .library(name: "UIKitPro", targets: ["UIKitPro"]),
    ],
    targets: [
        .target(name: "UIKitPro", swiftSettings: [.enableExperimentalFeature("StrictConcurrency=complete")]),
    ]
)
