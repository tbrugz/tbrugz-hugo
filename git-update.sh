#!/bin/bash
# see http://stackoverflow.com/a/31186538/616413

#REPO_DIR="themes/hugo-type-theme/"
#REPO_URL="https://github.com/digitalcraftsman/hugo-type-theme.git"

REPO_DIR="themes/hugo-lithium-theme/"
REPO_URL="https://github.com/yihui/hugo-lithium-theme.git"

git -C $REPO_DIR pull || git clone $REPO_URL $REPO_DIR
