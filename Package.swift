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
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.7.2"),
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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/5.4.0/AdiscopeMediaVungle.zip",
            checksum: "d7634e8cfe84df95812d5ac4ced13b1c2d82cb48d7290fefa904004843d20a3d"
        ),
    ]
)
