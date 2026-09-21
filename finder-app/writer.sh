#!/bin/bash

writefile=$1
writestr=$2

if [ "$#" -ne 2 ]; then
	echo "Require 2 args" >&2
	exit 1
fi

dirpath=$(dirname "$writefile")
mkdir -p "$dirpath"

if ! echo "$writestr" > "$writefile"; then
	echo "Failed"
	exit 1
fi

