# CastarSDK-iOS Demo

This is a sample project that demonstrates how to integrate and use CastarSDK.

## Features

- Demonstrate the basic initialization process of CastarSDK
- Show how to use the core functions
- Provide complete Swift sample code

## System requirements

- iOS 13.0+
- Xcode 15.0+
- Swift 5.0+

## Installation instructions

1. Clone this repository:
```bash
git clone https://github.com/YOUR_USERNAME/testsdk.git
```

2. Download `CastarSDK.framework` from Castar's official website

3. Put the downloaded SDK framework file into the project's `Castar/` directory

4. Open `Castar.xcodeproj` and run the project

## Usage

1. Define the variable castar:
```swift
private var castar: Castar?

```
2. Initialize the SDK:
```swift
let result = Castar.createInstance(devKey: "YOUR_DEV_KEY")
```

3. Process initialization results:
```swift
switch result {
case .success(let castarInstance):
self.castar = castarInstance
case .failure(let error):
print("Failed to initialize Castar: \(error.localizedDescription)")
}
```
4. Start
```swift
castar?.start()
```
5. Stop
```swift
castar?.stop()
```

## Notes

- You need to register on the official website and obtain a developer key (DevKey) before use
- This sample code is for reference only. Please follow the official documentation for actual use
- CastarSDK.framework is not included in this repository and needs to be downloaded separately

## License

MIT License - See the [LICENSE](LICENSE) file for details

## Related links

- [Castar official website](https://www.castarsdk.com)
- [SDK documentation](https://docs.castarsdk.com)
