#!/bin/sh -e

# read the first line of the file $1
read_value() {
  local value
  read -r value < $1 || true
  echo $value
}

# strip the partition number, if present
DEV="${1%[0-9]*}"

FILE="/proc/ide/$DEV/model"

[ -e $FILE ] || exit 1

read_value $FILE

exit 0
