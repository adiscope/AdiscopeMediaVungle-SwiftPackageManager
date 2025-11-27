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
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.5.2"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.0.0/AdiscopeMediaVungle.zip",
            checksum: "3e8f019c203167d1811df76255c91e0c02355dd18c314863e0a630dae97462af"
        ),
    ]
)
