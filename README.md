# PSA iOS SDK - Binary Releases

This repository hosts binary releases for PSA iOS SDK, supporting both CocoaPods and Swift Package Manager (SPM).

## Installation

### CocoaPods

Add to your `Podfile`:

```ruby
pod 'PSAiOSSDK', '~> 1.0.0'
```

Then run:

```bash
pod install
```

### Swift Package Manager

Add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases.git", from: "1.0.0")
]
```

Or in Xcode:
1. File → Add Packages...
2. Enter: `https://github.com/ProemSportsAnalytics/psa-ios-sdk-releases.git`
3. Select version

Then import in your code:

```swift
import PSACore
import PSAMessaging
import PSATracker
```

## Available Modules

- **PSACore** - Core SDK functionality
- **PSAMessaging** - Push notification handling
- **PSATracker** - Analytics and event tracking
- **PSANotificationService** - Notification service extension
- **PSANotificationContent** - Notification content extension

## Documentation

For full documentation and integration guides, please contact support or visit our documentation portal.

## License

[Your License Information]

## Support

For issues, questions, or support, please contact: support@proemsportsanalytics.com
