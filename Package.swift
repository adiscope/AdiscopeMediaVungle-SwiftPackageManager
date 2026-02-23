// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaVungle",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaVungle",
            targets: ["AdiscopeMediaVungleTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.6.3"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaVungleTarget",
            dependencies: [
                .target(name: "AdiscopeMediaVungle"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.2.0/AdiscopeMediaVungle.zip",
            checksum: "9e2980d65910c7acd4c9edd9ff9c7f601d376486c196b8aa2069e86ca674b60e"
        ),
    ]
)
