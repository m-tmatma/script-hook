#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0) && pwd)
SCRIPT_PATH=$SCRIPT_DIR/$(basename $0)

echo this is $SCRIPT_PATH
echo param $*
