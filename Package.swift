// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "OhhAuth",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "OhhAuth", targets: ["OhhAuth"])
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-crypto.git", from: "1.1.6")
    ],
    targets: [
        .target(name: "OhhAuth", dependencies: [.product(name: "Crypto", package: "swift-crypto")], path: ".")
    ]
)
