#!/bin/bash
# Created by Dzianis Zavoiskikh 6557587@gmail.com

# Task c. description:
# collect into "/tmp/investigation/" list of all the files accessed by java processes.
# in the direcrory - create one file with list of accessed files per earch process.
# filename = access_$PID.txt

# Implementation steps:

# Checking the sudo rights
if [ $(sudo id -u) != 0 ]
then
    echo "your need the sudo priveleges"
    exit 1
fi
# ...

# Creating /tmp/investigation/ if it not exist
if [ ! -d /tmp/investigation ]
then
  mkdir /tmp/investigation
fi
# ...

# Get the array of java process pids from all users
javas_pid_array=`pgrep java`
# echo $javas_pid_array # show the pids - this line is for testing purposes

# Get the list of files accessed by these founded java's pids via lsof tool
# and output thersult to the separate files according to the task description without formatting

for i in $javas_pid_array
do
lsof -p $i > /tmp/investigation/access_$i.txt 
echo "File /tmp/investigation/access_$i.txt created" 
done

exit 0