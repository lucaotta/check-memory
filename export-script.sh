#!/bin/bash
awk '/MemFree|Cached|Active|Active(anon)/ {
    v=$1
    gsub(/:$/, "", v)
    mem[v]=$2
}

END {
    #print "/proc/meminfo, MemUsed:", mem["Total"] - mem["Free"]
	print mem["MemFree"], ",", mem["Cached"], ",", mem["Active"], ",", mem["Active(anon)"], ",", mem["MemFree"]+mem["Cached"]
}' $1
