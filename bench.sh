#!/usr/bin/env bash

set -xe

TESTS=${TESTS:-./...}
REGEX=${REGEX:-.}
CPU=${CPU:-$(nproc)}
COUNT=${COUNT:-10} # 10 for benchstat

export PATH=$PATH:/usr/local/go/bin:/root/go/bin

cd $(go env GOPATH)/src/github.com/open-policy-agent/opa
git checkout juicer
trap "git checkout -" EXIT      # Always go back after we switch branches

git reset --hard HEAD
git clean -fdx

GO111MODULE=on GOFLAGS=-mod=vendor go test -run=- -bench=${REGEX} -benchmem -count=${COUNT} -timeout 1h -cpu=${CPU} $TESTS
git checkout -
