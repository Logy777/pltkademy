#!/bin/bash
# Created by Dzianis Zavoiskikh 6557587@gmail.com

# Description:
# Generate 100 configuration files with domain name nginx-01.com in a few lines
# for testing the test_1.sh (task a) results 

# Implementation steps
# Creating ./tmp dir to store the generated files
if [ ! -d ./tmp/conf ]
then
  mkdir ./tmp/conf
fi

# Get a timestamp in a Unix timestamp format
TIMESTAMP=`date +%s`
for NUM in {1..100}
do
# creating 2 lines of context and pushing it into named file
echo "Domain_1 name: nginx-01.com and Domain_2 name: nginx-01.com" > ./tmp/conf/test_${TIMESTAMP}_$NUM.txt
echo "Domain_3 name: nginx-01.com and Domain_4 name: nginx-01.com" >> ./tmp/conf/test_${TIMESTAMP}_$NUM.txt
echo "File ./tmp/conf/test_${TIMESTAMP}_$NUM.txt created" 
done

exit 0