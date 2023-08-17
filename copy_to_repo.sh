#!/usr/bin/env bash

# For $filename , copy each file from the machine into this repository

set -e
set -o pipefail
set -u

DEBUG=${DEBUG-false}

if [ "$DEBUG" = true ]; then
  set -x
fi

main() {
  local filename="$1.yaml"
  for file in $(yq '.files[]' < "${filename}")
  do
    absolute_path="${file/\~/$HOME}"
    destination_path="${file/\~/.}"
    if [ -f "$absolute_path" ]; then
      echo "$absolute_path -> $destination_path"
      mkdir -p "$(dirname "$destination_path")"
      cp "$absolute_path" "$destination_path"

    fi
  done

  tree -a
}

main "$@"
