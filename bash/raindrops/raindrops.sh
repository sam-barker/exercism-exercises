#!/usr/bin/env bash

function main {
  local number=$1
  local output=''

  # If divisible by three ...
  if [ $(($number % 3)) == 0 ]; then
    output="${output}Pling"
  fi

  if [ $(($number % 5)) == 0 ]; then
    output="${output}Plang"
  fi

  if [ $(($number % 7)) == 0 ]; then
    output="${output}Plong"
  fi

  if [ "$output" == '' ]; then
    output="$number"
  fi

  echo "$output"
}

main "$@"
