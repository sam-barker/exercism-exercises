#!/usr/bin/env bash

function main {
  local arr=$1
  local acronym

  arr=$(echo "$arr" | tr "*" ' ' | tr "_" ' ' | tr "-" ' ')

  for word in $arr; do
    local firstChar="${word:0:1}"
    acronym="${acronym}${firstChar}"
  done

  acronym=$(echo "$acronym" | awk '{print toupper($0)}')
  echo "$acronym"
}

main "$@"
