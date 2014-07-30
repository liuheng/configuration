#!/bin/sh
# ssh reverse tunnel

# gitlab on pm
ssh -NfR 20001:pm:80 agamemnon
# phabricator on pm
ssh -NfR 20002:pm:8000 agamemnon
