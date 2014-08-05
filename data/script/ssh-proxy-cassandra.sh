#!/bin/sh
# ssh reverse tunnel

# opscenter on cassandra1
ssh -NfR 20041:cassandra1:8888 agamemnon
