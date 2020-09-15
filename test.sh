#!/usr/bin/env bash

set -xe

TESTS=${TESTS:-./...}

export PATH=$PATH:/usr/local/go/bin:/root/go/bin

cd $(go env GOPATH)/src/github.com/open-policy-agent/opa
git checkout juicer -f
git reset --hard remote/juicer
git clean -fdx

GO111MODULE=on GOFLAGS=-mod=vendor go test -timeout 1h -v ${TESTS}
