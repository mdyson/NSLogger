// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NSLoggerSwift",
    platforms: [
        .iOS(.v8), 
        .tvOS(.v9),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "NSLoggerSwift",
            targets: ["NSLoggerSwift"]),
    ],
    targets: [
        .target(
            name: "NSLoggerSwift",
            path: "Client/iOS",
            sources: [
                "NSLogger.swift",
                "LoggerClient.m"
            ],
            publicHeadersPath: "$(SRCROOT)/Client/iOS",
            dependencies: []),
    ]
)
