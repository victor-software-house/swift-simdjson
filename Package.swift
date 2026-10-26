// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "swift-simdjson",
    products: [
        .library(name: "simdjson", targets: ["simdjson"]),
    ],
    targets: [
        // The upstream single-header amalgamation, from the release the submodule pins.
        .target(
            name: "simdjson",
            path: "simdjson/singleheader",
            sources: ["simdjson.cpp"],
            publicHeadersPath: "."
        ),
    ],
    cxxLanguageStandard: .cxx17
)
