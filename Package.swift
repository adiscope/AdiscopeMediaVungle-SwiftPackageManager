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
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.1.0"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.4.4"),
    ],
    targets: [
        .target(
            name: "AdiscopeMediaVungleTarget",
            dependencies: [
                .target(name: "AdiscopeMediaVungle"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaVungle",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.4.1/AdiscopeMediaVungle.zip",
            checksum: "cfa9b1ed7c0658ac59fd52757e71b01eba766bd5be14ab678e50a43b41773512"
        ),
    ]
)
