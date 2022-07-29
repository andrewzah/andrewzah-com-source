#!/usr/bin/env bash

set -exo pipefail

cmd=${1:-serve}

if [ -n "$ASDF_DIR " ]; then
  source "$HOME/.asdf/asdf.sh"
fi

if [ "$cmd" == "build" ]; then
  hugo -D
else
  hugo server -D
fi
