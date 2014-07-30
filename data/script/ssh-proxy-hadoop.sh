#!/bin/sh
# ssh reverse tunnel

# hdfs-namenode on hadoop-master
ssh -NfR 20021:hadoop-master:50070 agamemnon
# yarn on hadoop-master
ssh -NfR 20022:hadoop-master:8088 agamemnon

# spark master on yarn cluster
ssh -NfR 20023:hadoop-master:8080 agamemnon
# spark worker1 on yarn cluster
ssh -NfR 20024:hadoop-node1:8081 agamemnon
# spark worker2 on yarn cluster
ssh -NfR 20025:hadoop-node2:8081 agamemnon

# hbase master on hadoop-master
ssh -NfR 20026:hadoop-master:60010 agamemnon
# hbase backup master on hadoop-node2
ssh -NfR 20027:hadoop-node2:60010 agamemnon
# hbase region server on hadoop-node1
ssh -NfR 20028:hadoop-node1:60030 agamemnon
# hbase region server on hadoop-node2
ssh -NfR 20029:hadoop-node2:60030 agamemnon
