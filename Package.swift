// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "DeeplinkSDK",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(name: "DeeplinkSDK", targets: ["DeeplinkSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "DeeplinkSDK",
            url: "https://github.com/parth0072/deeplink-ios-sdk/releases/download/v1.0.2/DeeplinkSDK.xcframework.zip",
            checksum: "cfd37e84f16614454adc2ea6867355763ae9961568238ad4c44f7f3ffd6a29c7"
        ),
    ]
)
