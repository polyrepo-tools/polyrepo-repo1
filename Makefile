export CGO_ENABLED=0
export GO111MODULE=on


build: deps linter license_check

deps:
	go build -v ./...
	bash -c "diff -u <(echo -n) <(git diff go.mod)"
	bash -c "diff -u <(echo -n) <(git diff go.sum)"

license_check:
	shuttle run license_check

linter:
	shuttle run linter

clean: # @HELP remove all the build artifacts
	rm -rf ./build/_output ./vendor .shuttle

help:
	@grep -E '^.*: *# *@HELP' $(MAKEFILE_LIST) \
    | sort \
    | awk ' \
        BEGIN {FS = ": *# *@HELP"}; \
        {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}; \
    '
