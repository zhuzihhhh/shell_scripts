#!/bin/bash

E_BADARGS=65

if [[ -z "$1" ]]; then
	echo "Usage: `basename $0` filename"
	exit $E_BADARGS
fi

tr 'a-z' 'A-Z' < "$1"

exit 0
