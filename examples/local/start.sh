#!/bin/sh
set -x

./zk-up.sh
sleep 1
./vtctld-up.sh
sleep 1
./vttablet-up.sh
sleep 1
./lvtctl.sh InitShardMaster -force test_keyspace/0 test-100
sleep 1
./vtgate-up.sh