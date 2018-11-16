#!/bin/sh

source ${PWD}/config "$1" "$2"

./m3u.sh | egrep -ie "group-title=\".*(${DEFAULT_FILTER}).*\",.*" | sort | ${SEDCMD} 's/#EXTINF.* group-title="\(.*\)",.*/\1/' | sort | uniq | wc -l
