#!/bin/bash
awk '/VmPeak|VmSize|VmHWM|VmRSS|VmData/ {
    v=$1
    gsub(/:$/, "", v)
    mem[v]=$2
}

END {
    #print "/proc/meminfo, MemUsed:", mem["Total"] - mem["Free"]
	print mem["VmPeak"], ",", mem["VmSize"], ",", mem["VmHWM"], ",", mem["VmRSS"], ",", mem["VmData"]
}' $1
