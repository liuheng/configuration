#!/bin/bash
# start hbase, hadoop, zookeeper in order

/data/spark/sbin/stop-all.sh
/data/hbase/bin/hbase-daemon.sh stop thrift
/data/hbase/bin/stop-hbase.sh
/data/hadoop/sbin/mr-jobhistory-daemon.sh stop historyserver
/data/hadoop/sbin/stop-all.sh
/data/zookeeper/bin/zkServer.sh stop
