// swift-tools-version:5.2

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
    dependencies: [
        .package(url: "https://github.com/MoveUpwards/Sejima.git", from: "1.0.0"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0"),
    ],
    targets: [
        .target(
            name: "RxSejima",
            dependencies: ["Sejima", "RxSwift", "RxCocoa", "RxRelay"],
            path: "RxSejima/Sources"
        ),
    ]
)
