#!/bin/sh
set -x

./vtgate-down.sh
./vttablet-down.sh
./vtctld-down.sh
./zk-down.sh
if [ -z "$VTDATAROOT" ]; then
    echo "Set VTDATAROOT"
    exit 1
else
    rm -rf $VTDATAROOT/tmp
fi 
