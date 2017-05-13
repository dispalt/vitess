#!/bin/sh
set -x

./vtgate-down.sh
./vttablet-down.sh
./vtctld-down.sh
./zk-down.sh
if [ -z "$VTDATAROOT" ]; then
    rm -rf $VTDATAROOT/tmp
    exit 1
fi 
