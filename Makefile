SPEC       ?= openapi/dyno-extract.json
GENERATOR  := npx @openapitools/openapi-generator-cli generate

# Only operations with these tags (and the schemas they reference) end up in the SDK
TAGS       ?= blueprint,file

# Default base URL baked into the SDKs (users can still override it at runtime)
SERVER_URL ?= https://api.dyno.hideyoshi.sh/

# SDK release version, in SemVer (used as-is for npm). Python needs the PEP 440
# spelling (0.1.0-alpha.1 -> 0.1.0a1), derived here so both SDKs stay in step.
VERSION    ?= 0.1.0-alpha.1
PY_VERSION := $(shell echo "$(VERSION)" | sed -E 's/-alpha\.?/a/; s/-beta\.?/b/; s/-rc\.?/rc/')

# License declared in the package metadata; the LICENSE file is copied into each SDK
LICENSE_NAME := MIT

BUILD_DIR     := build
FILTERED_SPEC := $(BUILD_DIR)/dyno-extract.filtered.json

# The spec is pre-filtered, so generate every api/model left in it; no docs or tests
GLOBAL_PROPS := apis,models,supportingFiles,modelDocs=false,apiTests=false,modelTests=false

# Generator files to skip (CI configs, git_push.sh). It lives outside sdk/ so it survives
# the wipe, and is copied into each output folder before generating, because the
# generator only honours an ignore file that is already there (--ignore-file-override
# has no effect in the pinned version).
IGNORE_FILE  := .openapi-generator-ignore

OUTPUT     ?= ./sdk/
PY_OUT     ?= $(OUTPUT)/python
TS_OUT     ?= $(OUTPUT)/typescript

.PHONY: all sdk-python sdk-typescript filter-spec clean clean-python clean-typescript clean-spec check-spec

all: sdk-python sdk-typescript

check-spec:
	@test -f "$(SPEC)" || (echo "Spec not found: $(SPEC) (override with SPEC=path/to/spec.json)" && exit 1)

filter-spec: check-spec
	@mkdir -p "$(BUILD_DIR)"
	jq --arg tags "$(TAGS)" --arg server "$(SERVER_URL)" --arg license "$(LICENSE_NAME)" \
		-f scripts/filter-spec.jq "$(SPEC)" > "$(FILTERED_SPEC)"

sdk-python: filter-spec clean-python
	@mkdir -p "$(PY_OUT)" && cp "$(IGNORE_FILE)" "$(PY_OUT)/.openapi-generator-ignore"
	$(GENERATOR) \
		-i "$(FILTERED_SPEC)" \
		-g python --library asyncio \
		-o "$(PY_OUT)" \
		--global-property "$(GLOBAL_PROPS)" \
		--additional-properties packageName=dyno_extract_sdk,projectName=dyno-extract-sdk,packageVersion=$(PY_VERSION)
	cp LICENSE "$(PY_OUT)/LICENSE"

sdk-typescript: filter-spec clean-typescript
	@mkdir -p "$(TS_OUT)" && cp "$(IGNORE_FILE)" "$(TS_OUT)/.openapi-generator-ignore"
	$(GENERATOR) \
		-i "$(FILTERED_SPEC)" \
		-g typescript-fetch \
		-o "$(TS_OUT)" \
		--global-property "$(GLOBAL_PROPS)" \
		--additional-properties npmName=dyno-extract-sdk,npmVersion=$(VERSION),licenseName=$(LICENSE_NAME),supportsES6=true,withInterfaces=true
	cp LICENSE "$(TS_OUT)/LICENSE"

clean: clean-python clean-typescript clean-spec

clean-python:
	rm -rf "$(PY_OUT)"

clean-typescript:
	rm -rf "$(TS_OUT)"

clean-spec:
	rm -rf "$(BUILD_DIR)"
