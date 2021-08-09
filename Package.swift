// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "RxFlow",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "RxFlow", targets: ["RxFlow"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", .upToNextMajor(from: "6.0.0")),
    ],
    targets: [
        .target(
            name: "RxFlow",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxRelay", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift")
            ],
            path: "RxFlow"
        ),
        .testTarget(
            name: "RxFlowTests",
            dependencies: [
                "RxFlow",
                .product(name: "RxBlocking", package: "RxSwift"),
                .product(name: "RxTest", package: "RxSwift")
            ],
            path: "RxFlowTests"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
