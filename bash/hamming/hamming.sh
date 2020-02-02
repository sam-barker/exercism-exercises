#!/usr/bin/env bash

function main {
  if [ $# -lt 2 ]; then
    echo 'Usage: hamming.sh <string1> <string2>'
    exit 1
  fi

  local firstStrand=$1
  local secondStrand=$2
  local firstStrandLength
  local secondStrandLength
  local differences=0

  firstStrandLength=${#firstStrand}
  secondStrandLength=${#secondStrand}

  if [ "$firstStrandLength" != "$secondStrandLength" ]; then
    echo 'left and right strands must be of equal length'
    exit 1
  fi

  for (( i=0; i<${firstStrandLength}; i++)); do
    local char="${firstStrand:$i:1}"
    local otherChar="${secondStrand:$i:1}"
    if [ "$char" != "$otherChar" ]; then
      differences=$(($differences + 1))
    fi
  done

  echo "$differences"
}

main "$@"
