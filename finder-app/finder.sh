#!/bin/bash
filesdir=$1
searchstr=$2

if [ "$#" -ne 2 ]; then
	echo "Error: Two arguments required (filesdir and searchstr)."
	exit 1
elif [ ! -d "$filesdir" ]; then
	echo "Directory does not exist"
	exit 1
fi

X=$(find "$filesdir" -type f | wc -l)

Y=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l)
echo "The number of files are $X and the number of matching lines are $Y" 


