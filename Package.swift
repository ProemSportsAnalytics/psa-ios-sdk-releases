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
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.5/PSATracker.xcframework.zip",
            checksum: "e8752d04bec7b6ca338d882fef4ca447c067b0697d21cfce024aa716f1b44d39"
        ),
        .binaryTarget(
            name: "PSACore",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.5/PSACore.xcframework.zip",
            checksum: "b53c13df71facca42038efc8a645bd34446c198773a7fd6785a0a0c8e782c84a"
        ),
        .binaryTarget(
            name: "PSAMessaging",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.5/PSAMessaging.xcframework.zip",
            checksum: "e5fbf1a427152396367de4f886a433b757abc5b71104af00e115ec483bf07665"
        ),
        .binaryTarget(
            name: "PSANotificationService",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.5/PSANotificationService.xcframework.zip",
            checksum: "09352b1505376fd7c02f9a93c1ea29f5ac1a94830574de34ec3b5c08746d94b3"
        ),
        .binaryTarget(
            name: "PSANotificationContent",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.5/PSANotificationContent.xcframework.zip",
            checksum: "7d8d9ac7465c1f53db22c0220924ea6aab4479dcd7c68c9070619cef18fddca4"
        ),
    ]
)
