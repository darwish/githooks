#!/bin/bash

set -euo pipefail

version=$(git version | sed 's/git version //')
parts=( $(echo ${version//./ }) )
if [[ ${parts[0]} -lt 2 ]] || [[ ${parts[0]} -eq 2 && ${parts[1]} -lt 9 ]]; then
    echo "Requires git version 2.9+, you have $version"
    exit 1
fi

if ! command -v gofmt &>/dev/null; then
    echo "Cannot find gofmt on your path"
    exit 1
fi

mkdir -p ~/.githooks
curl -fsSL "https://raw.githubusercontent.com/darwish/githooks/master/pre-commit" -o ~/.githooks/pre-commit
chmod +x ~/.githooks/pre-commit

git config --global core.hooksPath ~/.githooks
echo "Successfully added global pre-commit hook: ~/.githooks/pre-commit"
