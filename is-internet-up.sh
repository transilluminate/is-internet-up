#!/bin/bash
# Copyright 2023 Adrian Robinson
# email: $ echo YWRyaWFuIGRvdCBqIGRvdCByb2JpbnNvbiBhdCBnbWFpbCBkb3QgY29tCg== | base64 --decode
# https://github.com/transilluminate/is-internet-up

# From https://github.com/pia-foss/manual-connections
check_tool() {
  command=$1
  if ! command -v "$command" >/dev/null; then
    echo "Error: command '$command' could not be found"
    exit 2
  fi
}
check_tool wget

SUCCESS_URL="http://detectportal.firefox.com/success.txt"

serverResponse=$(wget -q $SUCCESS_URL --timeout=10 -O - 2> /dev/null)

if [[ $serverResponse == "success" ]]; then
  echo "true"
else
  echo "false"
fi
