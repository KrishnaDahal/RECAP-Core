#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.recapcore/recapd.pid file instead
recap_pid=$(<~/.recapcore/testnet3/recapd.pid)
sudo gdb -batch -ex "source debug.gdb" recapd ${recap_pid}
