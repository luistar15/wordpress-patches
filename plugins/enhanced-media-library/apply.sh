#!/bin/bash

set -e

CURRENT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

git apply --verbose --no-index --ignore-whitespace --whitespace=nowarn $CURRENT_DIR/disable-admin-pages-and-compatibility.diff
