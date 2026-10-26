# swift-simdjson

[simdjson](https://github.com/simdjson/simdjson) as a Swift package.

The repository holds no simdjson source.
`simdjson/` is a git submodule pinned to an upstream release tag,
and the `simdjson` library target compiles that release's single-header amalgamation, `singleheader/simdjson.cpp`.
SwiftPM checks the submodule out with the package.

## Use

```swift
dependencies: [
    .package(url: "https://github.com/victor-software-house/swift-simdjson.git", exact: "0.0.1"),
],
targets: [
    .target(name: "MyWrapper", dependencies: [.product(name: "simdjson", package: "swift-simdjson")]),
]
```

The product is a C++17 library.
Call it from your own C or C++ target, behind a C interface your Swift code imports,
or from Swift with C++ interoperability enabled.
A package that depends on it sets `cxxLanguageStandard: .cxx17` or later.

## Versions

Each release of this package pins one simdjson release:

| Package | simdjson |
|:--|:--|
| 0.0.1 | v5.0.5 |

## Licence

simdjson is Apache-2.0; its licence is in the submodule, at `simdjson/LICENSE`.
The packaging in this repository is Apache-2.0 as well; see `LICENSE`.
