#!/bin/bash

#http://stackoverflow.com/a/6673798/316108
mydir=$(dirname "$0") && cd "${mydir}" || exit 1

#http://unix.stackexchange.com/a/84859/50868
shopt -s nullglob

for path in ~/processed/* ; do
	for datePath in $path/* ; do
		./generate-thumbnails.sh $datePath
	done
done
