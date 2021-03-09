#!/usr/bin/env bash

set -euxo pipefail

if [ ! -f "/home/andrew/.rbenv/shims/ruby" ]; then
  eval "$(rbenv init -)"
fi

hugo server -D
