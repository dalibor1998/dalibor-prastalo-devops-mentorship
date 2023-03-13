#!/bin/bash
# Test using at command
#

export PATH="$PATH:/home/mobaxterm/Desktop/dalibor-prastalo-week-3/scripts/chapter16"

echo "This script ran at $(date +%B%d,%T)" > ../../files/test13b.out
echo >> ../../files/test13b.out
sleep 5
echo "This is the script's end..." >> ../../files/test13b.out
