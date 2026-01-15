// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "PSAiOSSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "PSACore", targets: ["PSACore"]),
        .library(name: "PSAMessaging", targets: ["PSAMessaging"]),
        .library(name: "PSATracker", targets: ["PSATracker"]),
        .library(name: "PSANotificationService", targets: ["PSANotificationService"]),
        .library(name: "PSANotificationContent", targets: ["PSANotificationContent"]),
        .library(name: "PSAiOSSDK", targets: ["PSACore", "PSAMessaging"]),
    ],
    targets: [
        .binaryTarget(
            name: "PSATracker",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.4/PSATracker.xcframework.zip",
            checksum: "4ca356564f5244128ea3693e09f1030378b402eb625c7d3adc66205fa5437630"
        ),
        .binaryTarget(
            name: "PSACore",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.4/PSACore.xcframework.zip",
            checksum: "3b8d44b7adaef88d189955fb8202d2d1fb6767ab4a14f37f501341a8b2d5a226"
        ),
        .binaryTarget(
            name: "PSAMessaging",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.4/PSAMessaging.xcframework.zip",
            checksum: "c6ed655b7a365bf00a574fab64d0ecb18384d39867e01b844d45050bb51d3a9d"
        ),
        .binaryTarget(
            name: "PSANotificationService",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.4/PSANotificationService.xcframework.zip",
            checksum: "7e1ed27b80dd1e5e283ec68cb586969c176862f75d1b59655b96bd612eafc509"
        ),
        .binaryTarget(
            name: "PSANotificationContent",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.4/PSANotificationContent.xcframework.zip",
            checksum: "240e1aa588f43b99ddaac63f5cefadcc27a72a0fa74d2672b2e63d2c62e7429d"
        ),
    ]
)
