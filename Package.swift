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
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.2.0/AdiscopeMediaVungle.zip",
            checksum: "421d7d1e0b264c239bc6f6f7ce67081fb9592dc67dd017a05423d21335d468de"
        ),
    ]
)
