// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "swift-practice",
    products: [
        // The executable product defines the main application
        .executable(name: "swift-practice", targets: ["swift-practice"]),
    ],
    targets: [
        // Main application target
        .target(
            name: "swift-practice",
            dependencies: ["Note"],  // Dependency on the 'Note' module
            path: "Sources/swift-practice"  // Main application source folder
        ),
        // The 'Note' module target, where the functions are defined
        .target(
            name: "Note",
            path: "Sources/Note"  // Functions file (e.g., functions.swift)
        ),
        // Test target for testing the executable (optional)
        .testTarget(
            name: "swift-practiceTests",
            dependencies: ["swift-practice"]
        ),
    ]
)
