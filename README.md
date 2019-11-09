# polyrepo-repo1

To test run:
```bash
make build
```

Output should be something like:

```bash
go build -v ./...
bash -c "diff -u <(echo -n) <(git diff go.mod)"
bash -c "diff -u <(echo -n) <(git diff go.sum)"
shuttle run linter
Cloning plan https://github.com/polyrepo-tools/polyrepo-plan.git
shell: shuttle template -o .golangci.yml .golangci.tmpl
shell: golangci-lint run --config $tmp/.golangci.yml
shuttle run license_check
Pulling latest plan changes on master
shell: shuttle template -o boilerplate.py ./licensing/boilerplate.py
shell: shuttle template -o boilerplate.py.txt ./licensing/boilerplate.py.txt
shell: shuttle template -o boilerplate.proto.txt ./licensing/boilerplate.proto.txt
shell: shuttle template -o boilerplate.go.txt ./licensing/boilerplate.go.txt
shell: shuttle template -o boilerplate.generatego.txt ./licensing/boilerplate.generatego.txt
shell: chmod +x $tmp/boilerplate.py && $tmp/boilerplate.py -v
```