#!/usr/bin/env bash

set -exo pipefail

if ! command -v ruby >/dev/null; then
  eval "$(rbenv init -)"
fi

hugo -D
