#!/usr/bin/env bash

function main {
  local you
  if [ $# == 0 ]; then
    you='you'
  elif [ $# == 1 ]; then
    you=$1
  else
    you=$1
  fi

  echo "One for $you, one for me."
}

main "$@"
