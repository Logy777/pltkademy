#!/bin/bash
# Created by Dzianis Zavoiskikh 6557587@gmail.com

# Description:
# To modify the user crontab schedule 
# for running the test_2.sh every 6 hour

crontab -l > current_cron_schedule
# add a task for running the script at 1st minute of every 6 hour
echo "1 */6 * * * $PWD/test_2.sh > /dev/null" >> current_cron_schedule 
# for every minute test uncomment the line below
# echo "*/1 * * * * $PWD/test_2.sh > /dev/null" >> current_cron_schedule 
crontab current_cron_schedule
rm current_cron_schedule

exit 0