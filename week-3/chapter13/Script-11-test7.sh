#!/bin/bash
# iterating through multiple directories
for file in /home/djole/djordje-kuzmanovic-devops-mentorship/week-3/test /home/djole2
do
if [ -d "$file" ]
then
echo "$file is a directory"
elif [ -f "$file" ]
then
echo "$file is a file"
else
echo "$file doesn't exist"
fi
done
