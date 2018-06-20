#!/bin/bash
#set -x
#SYSTEM_FILE=$(basename $1)-system.csv
#exit 0
#echo "MemFree (kb),Cached (kb),Active (kb),Active(anon) (kb),+/- buffers cache: free (kb)" > $SYSTEM_FILE
#find "$1" -name "check*" | sort | head -n 8000  | xargs -n1 ./export-script.sh >> $SYSTEM_FILE


PROCESS_FILE=$(basename $1)-process.csv
echo "VmPeak (kb),VmSize (kb),VmHWM (kb),VmRSS (kb),VmData (kb)" > $PROCESS_FILE
find "$1" -name "proc*" | head -n 8000 | sort |  xargs -n1 ./process-export-script.sh >> $PROCESS_FILE
