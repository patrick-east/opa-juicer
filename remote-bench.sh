#!/usr/bin/env bash

set -xe

git push ssh://root@${JUICER}/root/go/src/github.com/open-policy-agent/opa HEAD:juicer

ssh root@${JUICER} /root/bench.sh
