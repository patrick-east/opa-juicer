#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo $1 > ${SCRIPT_DIR}/hosts

ansible-playbook -v -i ${SCRIPT_DIR}/hosts ${SCRIPT_DIR}/setup-juicer.yml
