#!/bin/bash
# Created by Dzianis Zavoiskikh 6557587@gmail.com

# Task a. description:
# create a script that corrects one server name (f.e change nginx-01.com to nginx-02.com)
# in 100 configuration files on linux server in one directory

# Implementation steps:
# Check and note about using arguments (new_name, old_name, dir_path )
# ....
# Check if the arguments valid
# ....
# get a array of file names inside the dir_path
# ....

dir_path="./tmp/conf"
old_name="nginx-01.com"
new_name="nginx-02.com"
# using xarg to send the getted list as arguments to sed tool
find ./tmp/conf -maxdepth 1 -type f | xargs sed -i "s/${old_name}/${new_name}/g"