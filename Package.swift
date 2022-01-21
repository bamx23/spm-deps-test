// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPMDepsTest",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/bamx23/spm-deps-library-a.git", from: "1.1.0-rc.1"),
        .package(url: "https://github.com/bamx23/spm-deps-library-b.git", from: "10.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "SPMDepsTest",
            dependencies: [
                .product(name: "SPMDepsLibraryB", package: "spm-deps-library-b"),
            ]),
        .testTarget(
            name: "SPMDepsTestTests",
            dependencies: ["SPMDepsTest"]),
    ]
)
