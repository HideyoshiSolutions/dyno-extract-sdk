SPEC       ?= openapi/dyno-extract.json
GENERATOR  := npx @openapitools/openapi-generator-cli generate

# Only operations with these tags (and the schemas they reference) end up in the SDK
TAGS       ?= blueprint,file

BUILD_DIR     := build
FILTERED_SPEC := $(BUILD_DIR)/dyno-extract.filtered.json

# The spec is pre-filtered, so generate every api/model left in it; no docs or tests
GLOBAL_PROPS := apis,models,supportingFiles,modelDocs=false,apiTests=false,modelTests=false

OUTPUT     ?= ./sdk/
PY_OUT     ?= $(OUTPUT)/python
TS_OUT     ?= $(OUTPUT)/typescript

.PHONY: all sdk-python sdk-typescript filter-spec clean clean-python clean-typescript clean-spec check-spec

all: sdk-python sdk-typescript

check-spec:
	@test -f "$(SPEC)" || (echo "Spec not found: $(SPEC) (override with SPEC=path/to/spec.json)" && exit 1)

filter-spec: check-spec
	@mkdir -p "$(BUILD_DIR)"
	jq --arg tags "$(TAGS)" -f scripts/filter-spec.jq "$(SPEC)" > "$(FILTERED_SPEC)"

sdk-python: filter-spec clean-python
	$(GENERATOR) \
		-i "$(FILTERED_SPEC)" \
		-g python --library asyncio \
		-o "$(PY_OUT)" \
		--global-property "$(GLOBAL_PROPS)" \
		--additional-properties packageName=dyno_extract_sdk,projectName=dyno-extract-sdk

sdk-typescript: filter-spec clean-typescript
	$(GENERATOR) \
		-i "$(FILTERED_SPEC)" \
		-g typescript-fetch \
		-o "$(TS_OUT)" \
		--global-property "$(GLOBAL_PROPS)" \
		--additional-properties npmName=dyno-extract-sdk,supportsES6=true,withInterfaces=true

clean: clean-python clean-typescript clean-spec

clean-python:
	rm -rf "$(PY_OUT)"

clean-typescript:
	rm -rf "$(TS_OUT)"

clean-spec:
	rm -rf "$(BUILD_DIR)"
