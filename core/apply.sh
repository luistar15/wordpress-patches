#!/bin/bash

set -e

CURRENT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

git apply --verbose --no-index --ignore-whitespace $CURRENT_DIR/track-22895.diff

git apply --verbose --no-index --ignore-whitespace $CURRENT_DIR/track-56252.diff

git apply --verbose --no-index --ignore-whitespace $CURRENT_DIR/track-56521.diff

git apply --verbose --no-index --ignore-whitespace $CURRENT_DIR/clone-post.diff

git apply --verbose --no-index --ignore-whitespace $CURRENT_DIR/theme.json.diff
