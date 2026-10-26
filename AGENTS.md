# swift-simdjson: agent guidance

This repository packages upstream simdjson for SwiftPM. `README.md` describes the layout and the version table.

## Rules

- Never copy simdjson source into this repository. `simdjson/` is a submodule pinned to an upstream release tag, and `Package.swift` compiles its `singleheader/simdjson.cpp`.
- Move the submodule only to an upstream release tag, never to a branch head.
- Each release pins one simdjson release: move the submodule, add a row to the README version table, and tag the merged commit. The first release was `0.0.1`; bump the patch for a new simdjson release, and the minor when the package's own interface breaks.
- Keep the package free of wrapper code. A consumer writes its own C or C++ interface over the `simdjson` product.
- CI builds the package on Linux and macOS on GitHub-hosted runners; the repository is public, so they cost nothing.
