#!/bin/bash

set -e

CURRENT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

git apply --verbose --no-index --ignore-whitespace $CURRENT_DIR/remove-review-links.diff

git apply --verbose --no-index --ignore-whitespace $CURRENT_DIR/fix-redirections.diff
