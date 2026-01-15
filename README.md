# PSA iOS SDK - Binary Releases

Binary distribution repository for PSA iOS SDK, supporting CocoaPods and Swift Package Manager.

## Current Version: 1.0.4

## Installation

### CocoaPods

```ruby
# Umbrella pod (includes Core, Messaging, Tracker)
pod 'PSAiOSSDK', '~> 1.0.4'

# Or individual modules
pod 'PSACore', '~> 1.0.4'
pod 'PSAMessaging', '~> 1.0.4'
pod 'PSATracker', '~> 1.0.4'
pod 'PSANotificationService', '~> 1.0.4'
pod 'PSANotificationContent', '~> 1.0.4'
```

### Swift Package Manager

Add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases.git", from: "1.0.4")
]
```

Or in Xcode: File → Add Packages... → Enter URL above

## Available Modules

| Module | Description |
|--------|-------------|
| **PSACore** | Core SDK - initialization, user management |
| **PSAMessaging** | Push notification handling |
| **PSATracker** | Analytics and event tracking |
| **PSANotificationService** | Notification service extension |
| **PSANotificationContent** | Custom notification UI |

## Architecture Support

- iOS device: `arm64`
- iOS Simulator: `arm64` + `x86_64`

## Documentation

See [psa-ios-sdk](https://github.com/ProemSportsAnalytics/psa-ios-sdk) for full documentation.

## Support

Email: support@proemsportsanalytics.com
