#!/usr/bin/env bash

set -xe

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


JUICER=$(head -n 1 ${SCRIPT_DIR}/hosts)

cd $(go env GOPATH)/src/github.com/open-policy-agent/opa
trap "cd -" EXIT

git push -f ssh://root@${JUICER}/root/go/src/github.com/open-policy-agent/opa HEAD:juicer

ssh root@${JUICER} TESTS=${TESTS} REGEX=${REGEX} CPU=${CPU} COUNT=${COUNT} /root/bench.sh
