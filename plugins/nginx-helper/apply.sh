#!/bin/bash

set -e

CURRENT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

git apply --verbose --no-index --ignore-whitespace $CURRENT_DIR/deprecated-filter-wpmu_new_blog.diff
