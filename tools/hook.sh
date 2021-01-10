#!/bin/sh

TIMESTAMP=$(date "+%Y/%m/%d-%H:%M:%S")
CALLER=$(ps $PPID | tail -n 1 | awk '{c="";for(i=5;i<=NF;i++) c=c $i" "; print c}')
echo -n "["
echo -n "$TIMESTAMP"
echo -n "]: "
echo -n "("
echo -n $CALLER
echo -n ") "
echo $*
