#!/usr/bin/env bash

set -exo pipefail

cmd=${1:?Please specify a command.}

set -u

if ! command -v ruby >/dev/null; then
  source "$HOME/.asdf/asdf.sh"
fi

if [ "$cmd" == "serve" ]; then
  hugo server -D
else
  hugo -D
fi
