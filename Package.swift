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
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.10/PSATracker.xcframework.zip",
            checksum: "0c5f4e541df34a6e38165f5ac62c031586cba606bfaa7e6caef5accdb20221e4"
        ),
        .binaryTarget(
            name: "PSACore",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.10/PSACore.xcframework.zip",
            checksum: "c086b590b6adbd352619ee7564a463e603be32ffdc3a74c2f8d2b56e7ef8f6fd"
        ),
        .binaryTarget(
            name: "PSAMessaging",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.10/PSAMessaging.xcframework.zip",
            checksum: "f2b6294d28eefe4c5886803dcd212de3a2ac3b14e7eb0a7390a7fb14aef30e33"
        ),
        .binaryTarget(
            name: "PSANotificationService",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.10/PSANotificationService.xcframework.zip",
            checksum: "6bccaa4ee4ec2619fe94ae40cd85dedd3fc4a547a9ceaeb7a732ba62d86f575c"
        ),
        .binaryTarget(
            name: "PSANotificationContent",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.10/PSANotificationContent.xcframework.zip",
            checksum: "e05b52e4a3835f883cbe78804e037eb48a6ad92e17a2f589655b8d9189560ed4"
        ),
    ]
)
