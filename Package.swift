// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PSAiOSSDK",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        // Main SDK products
        .library(
            name: "PSACore",
            targets: ["PSACore"]
        ),
        .library(
            name: "PSAMessaging",
            targets: ["PSAMessaging"]
        ),
        .library(
            name: "PSATracker",
            targets: ["PSATracker"]
        ),
        .library(
            name: "PSANotificationService",
            targets: ["PSANotificationService"]
        ),
        .library(
            name: "PSANotificationContent",
            targets: ["PSANotificationContent"]
        ),
        // Convenience umbrella product
        .library(
            name: "PSAiOSSDK",
            targets: ["PSACore", "PSAMessaging"]
        ),
    ],
    dependencies: [
        // FMDB for SQLite database support in PSATracker
        .package(url: "https://github.com/ccgus/fmdb.git", from: "2.7.0"),
    ],
    targets: [
        // Binary targets - XCFrameworks hosted on GitHub Releases
        .binaryTarget(
            name: "PSATracker",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.0/PSATracker.xcframework.zip",
            checksum: "35a0ef45991de7e1aef290b99083ce8a5f7fdbff866273838593e212d56c74ac"
        ),
        .binaryTarget(
            name: "PSACore",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.0/PSACore.xcframework.zip",
            checksum: "3874dcec890bda29c0775eb2d5802fb57692341773ec48686824b7d331413f10"
        ),
        .binaryTarget(
            name: "PSAMessaging",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.0/PSAMessaging.xcframework.zip",
            checksum: "9e92d9dd92e903759c742c6e0e639383829981c9e2bf05d201bacb2535955f28"
        ),
        .binaryTarget(
            name: "PSANotificationService",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.0/PSANotificationService.xcframework.zip",
            checksum: "d7124f38a712bfeb5329935cc2fbbbe28dd9a8e4f3a4fa18761fd72c4c4e6845"
        ),
        .binaryTarget(
            name: "PSANotificationContent",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.0/PSANotificationContent.xcframework.zip",
            checksum: "ecb7bf547753883deea6cb73db310d663aee49fab80b1d89c2bc1c190acd1b21"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
