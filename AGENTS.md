# AGENTS.md

Guidance for AI coding agents working in this repository.

## Project overview

Client SDKs for the DynoExtract API, generated from `openapi/dyno-extract.json` with [openapi-generator](https://openapi-generator.tech).

- `sdk/python/`: Python SDK, package `dyno_extract_sdk` (asyncio)
- `sdk/typescript/`: TypeScript SDK, package `dyno-extract-sdk` (fetch)
- `scripts/filter-spec.jq`: trims the spec to the operations tagged with `TAGS`
- `Makefile`: generation targets

## Generated code

- Never hand-edit files under `sdk/`. Change the spec, the `Makefile`, or `scripts/filter-spec.jq`, then regenerate.
- `make sdk-python` / `make sdk-typescript` delete and recreate their output folders, including the README files inside them. Put project-wide docs in the root `README.md`.
- Requirements: `make`, `jq`, Node.js (`npx`), and a Java runtime.

```sh
make                 # regenerate both SDKs
make sdk-python      # Python only
make sdk-typescript  # TypeScript only
make clean           # remove generated SDKs and build/
```

## Commits

- Use Conventional Commit prefixes (`feat:`, `fix:`, `chore:`, ...), matching the existing history.
- **Do not add `Co-Authored-By:` trailers (or any other AI/agent attribution trailers) to commit messages.** This applies to every agent and tool, regardless of their default attribution settings.
- Do not add "Generated with ..." attribution lines to commit messages or pull request descriptions.
