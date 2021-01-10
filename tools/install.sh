#!/bin/sh
SCRIPT_PATH=$(cd $(dirname $0) && pwd)/$(basename $0)
HOOK_SCRIPT=$(cd $(dirname $1) && pwd)/$(basename $1)
SRC_DIR=$(cd $(dirname $2) && pwd)/$(basename $2)
DST_DIR=$(cd $(dirname $3) && pwd)/$(basename $3)

rm -rf $DST_DIR
cp -a $SRC_DIR $DST_DIR

find $DST_DIR -executable -and -type f | xargs -n 1 -I{}  sh -c "mv {} {}.org; ln -s ${HOOK_SCRIPT} {}"
ls -l $DST_DIR
