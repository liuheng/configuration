#!/bin/sh
# ssh reverse tunnel

# graphite on dash
ssh -NfR 20011:dash:80 agamemnon
# descartes on dash
ssh -NfR 20012:dash:8000 agamemnon
# grafana on dash
ssh -NfR 20013:dash:8001 agamemnon
# influxdb on dash
ssh -NfR 20014:dash:8086 agamemnon
