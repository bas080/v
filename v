#!/usr/bin/env bash

v() {
  ${EDITOR:-vi} $({
    git ls-files || find "$PWD" -type f
  } | sed "$(printf '/%s/I!d; ' "$@")")
}
