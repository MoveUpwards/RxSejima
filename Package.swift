// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "RxSejima",
    platforms: [
        .iOS(.v10),
    ],
    products: [
        .library(
            name: "RxSejima",
            targets: ["RxSejima"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "RxSejima",
            dependencies: [],
            path: "RxSejima/Sources"
        ),
    ]
)
