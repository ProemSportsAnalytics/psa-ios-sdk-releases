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
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.6/PSATracker.xcframework.zip",
            checksum: "aad7229dc82b1c7fc3266ec5d15c208a08a272a2d7d7052c3226f4c40fb3c512"
        ),
        .binaryTarget(
            name: "PSACore",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.6/PSACore.xcframework.zip",
            checksum: "792a5297897fe3c50abf1cb16e67c0fcb5f7052612e73dff5891f6b05c0ce0cd"
        ),
        .binaryTarget(
            name: "PSAMessaging",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.6/PSAMessaging.xcframework.zip",
            checksum: "4af46a93c03243f068da9d13c8d89731392affa84a71babb52ce4e2b3227b77e"
        ),
        .binaryTarget(
            name: "PSANotificationService",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.6/PSANotificationService.xcframework.zip",
            checksum: "2c9ce528ff4c03f07db7284f8522b01b75a8c06a82bb8563f6c49f32950fc8e1"
        ),
        .binaryTarget(
            name: "PSANotificationContent",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.6/PSANotificationContent.xcframework.zip",
            checksum: "4354c9e9229bd98e47d3dbd63f21773026f366248fc7aa9071f35e8444e3dadc"
        ),
    ]
)
