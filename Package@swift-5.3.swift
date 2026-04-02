// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "BigInt",
    platforms: [
        .macOS(.v10_12), .macCatalyst(.v13), .iOS(.v9), .tvOS(.v9), .watchOS(.v2)
    ],
    products: [
        .library(name: "BigInt", targets: ["BigInt"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "BigInt",
            dependencies: [],
            exclude: ["BigInt.docc"],
            resources: [.copy("PrivacyInfo.xcprivacy")]
        ),
        .testTarget(
            name: "BigIntTests",
            dependencies: ["BigInt"]),
    ],
    swiftLanguageVersions: [.v5]
)
