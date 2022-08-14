#!/bin/bash

if [[ $# -lt 1 ]]; then
  echo "Usage:"
  echo "  $0 <serial-port> [ <baud> [ <stty-options> ... ] ]"
  echo "  Example: $0 /dev/ttyAMA0 115200"
  echo "  Press Ctrl+Q to quit"
fi

set -e

bak="$(stty -g)"

trap 'set +e; kill "$bgPid"; stty "$bak"' EXIT

port="$1"; shift

stty -F "$port" raw -echo "$@"

stty raw -echo isig intr ^Q quit undef susp undef

cat "$port" & bgPid=$!

cat >"$port"
