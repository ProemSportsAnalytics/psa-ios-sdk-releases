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
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.9/PSATracker.xcframework.zip",
            checksum: "6943c27e830d2762e17a9df7654dcfe8194acc83e056ef68b11545b86bd26311"
        ),
        .binaryTarget(
            name: "PSACore",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.9/PSACore.xcframework.zip",
            checksum: "a2c89c3bba0415425d79d3a0012a502877adf581f27b3d4a062dd16ac5c365aa"
        ),
        .binaryTarget(
            name: "PSAMessaging",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.9/PSAMessaging.xcframework.zip",
            checksum: "503bd07a6f1d7d1ac2963e5b708611b2d5b5aa1be31a583b782008bfc5b4e8d1"
        ),
        .binaryTarget(
            name: "PSANotificationService",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.9/PSANotificationService.xcframework.zip",
            checksum: "cf73ff932b074a73c8dfb9a1bbd15d56175d52a58eedcc06440ac2ebcf0af076"
        ),
        .binaryTarget(
            name: "PSANotificationContent",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.9/PSANotificationContent.xcframework.zip",
            checksum: "d5421b2e2bfbee9974ec63a2f4d2b49ec6dc981541fb24d95e15cb4556c50872"
        ),
    ]
)
