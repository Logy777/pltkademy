#!/bin/bash
# Created by Dzianis Zavoiskikh 6557587@gmail.com

crontab -l > current_cron_schedule
# add a task for running the script at 1st minute of every 6 hour
echo "1 */6 * * * $PWD/test_2.sh" >> current_cron_schedule 
# for every minute test uncomment the line below
# echo "*/1 * * * * $PWD/test_2.sh" >> current_cron_schedule 
crontab current_cron_schedule
rm current_cron_schedule