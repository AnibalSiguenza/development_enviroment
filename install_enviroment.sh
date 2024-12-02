#! /bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

(cd ${SCRIPT_DIR}/vim/src ; sudo make)
(cd ${SCRIPT_DIR}/vim/src ; sudo make install)
