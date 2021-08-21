#!/bin/bash
# Created by Dzianis Zavoiskikh 6557587@gmail.com

# Task c. description:
# collect into "/tmp/investigation/" list of all the files accessed by java processes.
# in the direcrory - create one file with list of accessed files per earch process.
# filename = access_$PID.txt

# Common steps
# Checking the sudo rights
if [ $(sudo id -u) != 0 ]
then
    echo "your need the sudo priveleges"
    exit 1
fi
# ...

# Creating /tmp/investigation/ if not exist
if [ ! -d /tmp/investigation ]
then
  mkdir /tmp/investigation
fi
# ...

# Get the array of java process pids from all users
javas_pid_array=`pgrep java`
echo $javas_pid_array

# Get the list of files accessed by these founded java's pids, that include
# - the list of accessed files at the existing main filesystem
# ...
# - the list of accessed files at the mounted filesystems
# ...
# - the list of network accessed files 
# ...

# Formatting and output according to task description