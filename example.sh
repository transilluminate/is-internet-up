#!/bin/bash
if [[ $(./is-internet-up.sh) == 'true' ]]; then
	echo "Internet is working"
else
	echo "Internet is not working"
fi
