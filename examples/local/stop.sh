#!/bin/sh
set -x

./vtgate-down.sh
./vttablet-down.sh
./vtctld-down.sh
./zk-down.sh