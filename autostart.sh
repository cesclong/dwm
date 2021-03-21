#! /bin/bash

variety &

dte(){
  dte="$(date +"%A,%B %d -$H:$M")"
  echo e "$dte"
}



while true; do
  xsetroot -name "$(dte)"
  sleep 10s # update time everty minute
done &
