#!/bin/bash
# reading values from a file
file="../../fajlovi/states"
IFS=$'\n'
for state in $(cat $file)
do
echo "Visit beautiful $state"
done
