#!/usr/bin/env bash

function main {
  if [ "$#" -ne 1 ]; then
    echo 'Usage: leap.sh <year>'
    exit 1;
  fi

  local year="$1"

  local re='^[0-9]+$'
  if ! [[ $year =~ $re ]] ; then
     echo 'Usage: leap.sh <year>';
     exit 1
  fi

  local remainder4=$(($year % 4))
  # Is it divisible by 4?
  if [ $remainder4 == 0 ]; then
    # Now is it divisible by 100?
    local remainder100=$(($year % 100))
    if [ $remainder100 == 0 ]; then
      # Now is it divisible by 400?
      local remainder400=$(($year % 400))
      if [ $remainder400 == 0 ]; then
        echo 'true'
      else
        echo 'false'
      fi
    else
      echo 'true'
    fi
  else
    echo 'false'
  fi

  exit 0;
}

main "$@"
