#!/bin/sh

while :; do
  date
  curl -q ${1-localhost:8080}
  echo
  echo
  sleep 3
done
