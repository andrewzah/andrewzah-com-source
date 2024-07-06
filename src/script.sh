#!/usr/bin/env bash

set -exo pipefail

cmd=${1:-serve}

set -u

if [ "$cmd" == "build" ]; then
  hugo -D
else
  hugo server -D
fi
