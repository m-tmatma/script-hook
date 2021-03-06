#!/bin/sh
SCRIPT_PATH=$(cd $(dirname $0) && pwd)/$(basename $0)
ORG_SCRIPT=${SCRIPT_PATH}.org

WORKDIR=$(pwd)
TIMESTAMP=$(date "+%Y/%m/%d-%H:%M:%S")
CALLER=$(ps $PPID | tail -n 1 | awk '{c="";for(i=5;i<=NF;i++) c=c $i" "; print c}')

echo "[$TIMESTAMP] caller=$CALLER, work=$WORKDIR, cmd=$SCRIPT_PATH $*" | tee -a /tmp/hook.log
$ORG_SCRIPT $*
