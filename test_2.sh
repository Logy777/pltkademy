#!/bin/bash
# Created by Dzianis Zavoiskikh 6557587@gmail.com

# Task b. description:
# Create and Schedule a script that creates 10 files named "test_$TIMESTAMP_$NUM.txt" 
# (timestamp == current_time, num == 1...10)
# each one containing 1000 random characters.
# in the comments write us how do you plan to schedule it to run every 6 hours.

# Implementation steps
# Creating ./tmp dir to store the generated files
if [ ! -d ./tmp ]
then
  mkdir ./tmp
fi

# Get a timestamp in a Unix timestamp format
TIMESTAMP=`date +%s`
for NUM in {1..10}
do
# generate a random string 1000 character lenth and push it into named file
tr -dc A-Za-z0-9 </dev/urandom | head -c 1000 > ./tmp/test_${TIMESTAMP}_$NUM.txt
echo "File ./tmp/test_${TIMESTAMP}_$NUM.txt created" 
done

# To add a crontab task for running this script at 1st minute of every 6 hour
# it suppose to use "1 */6 * * * $PWD/test_2.sh > /dev/null" settings. 
# To activate the settings run the attached script from the cli once
# 
# ./cron_script.sh