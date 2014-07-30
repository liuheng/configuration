#!/bin/bash
# start hadoop, hbase in order

/data/hadoop/sbin/start-all.sh
/data/hadoop/sbin/mr-jobhistory-daemon.sh start historyserver
/data/hbase/bin/start-hbase.sh
/data/hbase/bin/hbase-daemon.sh start thrift
/data/spark/sbin/start-all.sh
