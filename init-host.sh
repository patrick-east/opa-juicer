#!/usr/bin/env bash

set -xe

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo $1 > ${SCRIPT_DIR}/hosts

ansible-playbook -i ${SCRIPT_DIR}/hosts ${SCRIPT_DIR}/setup-juicer.yml
