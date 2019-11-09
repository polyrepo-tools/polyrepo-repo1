package main

import (
	"github.com/polyrepo-tools/polyrepo-repo1/pkg/test"
	"golang.org/x/tools/go/ssa/interp/testdata/src/fmt"
)

func main() {
	fmt.Println("Hello World")
	test.Test()

}
