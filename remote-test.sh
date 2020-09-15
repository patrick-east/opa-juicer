#!/usr/bin/env bash

set -xe

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"


JUICER=$(head -n 1 ${SCRIPT_DIR}/hosts)

PREV_DIR=$(pwd)
cd $(go env GOPATH)/src/github.com/open-policy-agent/opa
trap "cd ${PREV_DIR}" EXIT

git push -f ssh://root@${JUICER}/root/go/src/github.com/open-policy-agent/opa HEAD:remote/juicer

ssh root@${JUICER} TESTS=${TESTS} /root/test.sh
