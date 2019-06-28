#!/bin/bash
WIFIDEV=mwifiex_pcie
rmmod $WIFIDEV
sleep 1
modprobe $WIFIDEV
sleep 1
