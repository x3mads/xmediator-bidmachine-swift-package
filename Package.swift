// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorStack",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorStack", targets: ["XMediatorStackTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/bidmachine/BidMachine-SPM.git", exact: "3.8.1"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.145.0")),
    ],
    targets: [
        .target(
            name: "XMediatorStackTarget",
            dependencies: [
                .target(name: "XMediatorStack"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "BidMachine", package: "BidMachine-SPM"),
            ],
            path: "XMediatorStackTarget",
            linkerSettings: [
                .linkedFramework("AdSupport"),
            ]
        ),
        .binaryTarget(
            name: "XMediatorStack",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorStack/XMediatorStack-3.8.1.0.zip",
            checksum: "4f46a621bda2da1577f71325ddabaf3e1b688d2e93c2869c25af8a60090ed396"
        ),
    ]
)
