// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorStack",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorStack", targets: ["XMediatorStackTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/bidmachine/BidMachine-SPM.git", exact: "3.8.0"),
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
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorStack/XMediatorStack-3.8.0.0.zip",
            checksum: "1e01fd2f694f827d7187a6bbdc967b570cb238ea850ece780fa3861dbbaf537e"
        ),
    ]
)
