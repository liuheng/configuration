#!/bin/sh
# ssh reverse tunnel

# hdfs-namenode on hadoop-master
ssh -NfR 20031:nginx1:80 agamemnon
