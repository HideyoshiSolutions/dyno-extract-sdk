# DynoExtract SDK

Official client libraries for the **DynoExtract API**, generated from its OpenAPI specification.

The SDKs cover the `blueprint` and `file` endpoints of the API.

## Choose your language

| Language   | Package             | Runtime      | Docs                                              |
|------------|---------------------|--------------|---------------------------------------------------|
| Python     | `dyno_extract_sdk`    | Python 3.11+ (asyncio) | [sdk/python/README.md](sdk/python/README.md)       |
| TypeScript | `dyno-extract-sdk`  | Node / browser (fetch) | [sdk/typescript/README.md](sdk/typescript/README.md) |

Each language README covers installation, authentication, a quick-start example, and the full list of endpoints and models.

- 🐍 **Python users** → [sdk/python/README.md](sdk/python/README.md)
- 🟦 **TypeScript / JavaScript users** → [sdk/typescript/README.md](sdk/typescript/README.md)

## Authentication

The API defines two security schemes:

- **API key** (`APIKeyHeader`): sent in the `Authorization` header.
- **OpenID Connect** (`OAuthScheme`)

The quick-start example in each language README shows how to set the API key.

## Repository layout

```
.
├── openapi/dyno-extract.json   # Source OpenAPI spec
├── scripts/filter-spec.jq      # Trims the spec to the selected tags
├── sdk/
│   ├── python/                 # Generated Python SDK
│   └── typescript/             # Generated TypeScript SDK
├── .openapi-generator-ignore   # Generator files to skip (CI configs, git_push.sh)
├── openapitools.json           # Pinned openapi-generator version
└── Makefile                    # Generation targets
```

## Regenerating the SDKs

The code under `sdk/` is generated, so don't edit it by hand. Update the spec and regenerate instead.

**Requirements:** `make`, [`jq`](https://jqlang.org/), Node.js (for `npx`), and a Java runtime (used by openapi-generator).

```sh
make                 # regenerate both SDKs
make sdk-python      # Python only
make sdk-typescript  # TypeScript only
make clean           # remove generated SDKs and build/
```

You can override these variables:

| Variable | Default                     | Description                                   |
|----------|-----------------------------|-----------------------------------------------|
| `SPEC`   | `openapi/dyno-extract.json` | Path to the OpenAPI spec                      |
| `TAGS`   | `blueprint,file`            | Comma-separated operation tags to include     |
| `OUTPUT` | `./sdk/`                    | Root output directory for the generated SDKs  |

Example:

```sh
make SPEC=path/to/new-spec.json TAGS=blueprint,file,task
```

### How it works

1. `filter-spec` runs `scripts/filter-spec.jq` over the spec. It keeps only operations tagged with one of `TAGS` and the schemas they reference, then writes the result to `build/dyno-extract.filtered.json`.
2. Each `sdk-*` target wipes its output directory and runs [openapi-generator](https://openapi-generator.tech) (version pinned in `openapitools.json`) against the filtered spec:
   - Python: `python` generator, `asyncio` library
   - TypeScript: `typescript-fetch` generator, with ES6 and interfaces

> **Note:** Each run wipes `sdk/python` and `sdk/typescript` completely, including their READMEs. Put project-wide documentation in this file.
