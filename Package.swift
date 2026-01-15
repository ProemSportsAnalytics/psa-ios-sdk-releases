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
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.2/PSATracker.xcframework.zip",
            checksum: "7a422622f9ee0ec410bc05ec5dbdf27d5fefcea5b3db218beeaeba23cc952dec"
        ),
        .binaryTarget(
            name: "PSACore",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.2/PSACore.xcframework.zip",
            checksum: "0d735da330cc1ece7e27585cf0b71fdce96de7d38e527868fad39bb0b81c1507"
        ),
        .binaryTarget(
            name: "PSAMessaging",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.2/PSAMessaging.xcframework.zip",
            checksum: "3a458bbda46c3911ab7e1afb40a79ded55afb00908046b16f3c15684ee541313"
        ),
        .binaryTarget(
            name: "PSANotificationService",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.2/PSANotificationService.xcframework.zip",
            checksum: "23bcf528f965f9f2ba9a46dd89767531c253bf18394fb7dedd3026699f34ff66"
        ),
        .binaryTarget(
            name: "PSANotificationContent",
            url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases/releases/download/v1.0.2/PSANotificationContent.xcframework.zip",
            checksum: "c1ac646053fedc0e5db2288820859ef47919a80e7e21204eacb26f07d4cc3a86"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
