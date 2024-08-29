#!/bin/bash

set -e

CURRENT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

git apply --verbose --no-index --ignore-whitespace $CURRENT_DIR/capture-real-ip.diff

git apply --verbose --no-index --ignore-whitespace $CURRENT_DIR/encryption-key-constant.diff

git apply --verbose --no-index --ignore-whitespace $CURRENT_DIR/keep-url-token-in-login-form.diff
