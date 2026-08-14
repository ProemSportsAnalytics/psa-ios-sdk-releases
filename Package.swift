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
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v2.0.0/PSATracker.xcframework.zip",
            checksum: "b63d4d1d0f46344200e6917a3d8a16c09ffe691d11653fd98b662941f7160216"
        ),
        .binaryTarget(
            name: "PSACore",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v2.0.0/PSACore.xcframework.zip",
            checksum: "70246fcca7d4a5b189fb5d4f901602df93169e18267bd7680314d213a9cd3e88"
        ),
        .binaryTarget(
            name: "PSAMessaging",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v2.0.0/PSAMessaging.xcframework.zip",
            checksum: "b3f9bf53c3605553e58c05596808c4ca26eab4692406ef125ad8f9f0ecbccb46"
        ),
        .binaryTarget(
            name: "PSANotificationService",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v2.0.0/PSANotificationService.xcframework.zip",
            checksum: "f439a2a1f9920562338f2495019cb00ef7bf987ff6ad6b1a09bb75201dbb725f"
        ),
        .binaryTarget(
            name: "PSANotificationContent",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v2.0.0/PSANotificationContent.xcframework.zip",
            checksum: "d47bfdc43e2dd6f32ff31714bd34b3870107ed2e2b650d7a7fe041b3d894e4cb"
        ),
    ]
)
