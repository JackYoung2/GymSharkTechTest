// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GymSharkTechTestPackage",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "AppFeature", targets: ["AppFeature"]),
        .library(name: "APIClient", targets: ["APIClient"]),
        .library(name: "SharedViews", targets: ["SharedViews"]),
        .library(name: "ProductListFeature", targets: ["ProductListFeature"]),
        .library(name: "ProductFeature", targets: ["ProductFeature"]),
        .library(name: "Common", targets: ["Common"]),
        .library(name: "Models", targets: ["Models"]),
//        .library(name: "RoundUpClient", targets: ["RoundUpClient"]),
//        .library(name: "SavingsGoalListFeature", targets: ["SavingsGoalListFeature"]),
//        .library(name: "CreateSavingsGoalFeature", targets: ["CreateSavingsGoalFeature"]),
//        .library(name: "AccountsFeature", targets: ["AccountsFeature"]),
//        .library(name: "LoginFeature", targets: ["LoginFeature"]),
//        .library(name: "SessionManager", targets: ["SessionManager"])
    ],
    dependencies: [
        .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.0.0"),
//        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
//        .package(url: "https://github.com/RxSwiftCommunity/RxDataSources.git", from: "5.0.0"),
//        .package(url: "https://github.com/kishikawakatsumi/KeychainAccess.git", from: "4.2.2")
    ],
    targets: [
        .target(
            name: "SharedViews", 
            dependencies: ["Common", "Models"]
        ),
        .target(
            name: "AppFeature",
            dependencies: [
//                "Views",
                "Models",
                "ProductListFeature"
            ]
        ),
        .target(name: "Models"),
        .target(
            name: "APIClient",
            dependencies: [
                "Common",
                .product(name: "Dependencies", package: "swift-dependencies")
            ]
        ),
        .target(
            name: "ProductListFeature",
            dependencies: [
                "APIClient",
                "Models",
                "Common",
                "ProductFeature",
                "SharedViews",
                .product(name: "Dependencies", package: "swift-dependencies")
            ]
        ),
        .target(
            name: "ProductFeature",
            dependencies: [
                "Models",
                "Common",
                "SharedViews",
                .product(name: "Dependencies", package: "swift-dependencies")
            ]
        ),
        .target(
            name: "Common",
            dependencies: ["Models"],
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "GymSharkTechTestPackageTests",
            dependencies: [
                "AppFeature"
            ])
    ]
      
)
