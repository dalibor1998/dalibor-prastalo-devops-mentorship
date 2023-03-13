#!/bin/bash
# reading values from a file
file="../../fajlovi/states"
for state in $(cat $file)
do
echo "Visit beautiful $state"
done
