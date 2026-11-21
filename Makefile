SPEC       ?= openapi/dyno-extract.json
GENERATOR  := npx @openapitools/openapi-generator-cli generate

# Only the `blueprint` and `file` tags; no docs or tests
GLOBAL_PROPS := apis=blueprint:file,models,supportingFiles,apiDocs=false,modelDocs=false,apiTests=false,modelTests=false

OUTPUT     ?= ./sdk/
PY_OUT     ?= $(OUTPUT)/python
TS_OUT     ?= $(OUTPUT)/typescript

.PHONY: all sdk-python sdk-typescript clean clean-python clean-typescript check-spec

all: sdk-python sdk-typescript

check-spec:
	@test -f "$(SPEC)" || (echo "Spec not found: $(SPEC) (override with SPEC=path/to/spec.json)" && exit 1)

sdk-python: check-spec clean-python
	$(GENERATOR) \
		-i "$(SPEC)" \
		-g python \
		-o "$(PY_OUT)" \
		--global-property "$(GLOBAL_PROPS)" \
		--additional-properties packageName=dyno_extract_sdk,projectName=dyno-extract-sdk

sdk-typescript: check-spec clean-typescript
	$(GENERATOR) \
		-i "$(SPEC)" \
		-g typescript-fetch \
		-o "$(TS_OUT)" \
		--global-property "$(GLOBAL_PROPS)" \
		--additional-properties npmName=dyno-extract-sdk,supportsES6=true,withInterfaces=true

clean: clean-python clean-typescript

clean-python:
	rm -rf "$(PY_OUT)"

clean-typescript:
	rm -rf "$(TS_OUT)"