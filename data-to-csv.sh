#!/bin/bash
#set -x
OUT_FILE=$(basename $1).csv
#exit 0
echo "MemFree (kb),Cached (kb),Active (kb),Active(anon) (kb),+/- buffers cache: free (kb)" > $OUT_FILE
find "$1" | sort  | xargs -n1 ./export-script.sh >> $OUT_FILE
