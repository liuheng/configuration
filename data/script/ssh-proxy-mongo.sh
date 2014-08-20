#!/bin/sh
# ssh reverse tunnel

# mongodb on mongodb1
ssh -NfR 20041:mongodb1:28017 agamemnon
