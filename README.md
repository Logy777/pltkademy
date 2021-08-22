## DevOps Academy Test 

# task c
Running [test_3.sh](test_3.sh) result

```bash
denis@vmi510286 ~/ruvds/plt (master)$ sudo ./test_3.sh 
File /tmp/investigation/access_12708.txt created
File /tmp/investigation/access_22605.txt created
```

Content example access_22605.txt:

```bash
denis@vmi510286 ~/ruvds/plt (master)$ cat /tmp/investigation/access_22605.txt | tail -10
java    22605  bin  915u  a_inode   0,13         0     12639 [eventpoll]
java    22605  bin  916r     FIFO   0,12       0t0 503063714 pipe
java    22605  bin  917w     FIFO   0,12       0t0 503063714 pipe
java    22605  bin  918u  a_inode   0,13         0     12639 [eventpoll]
java    22605  bin  919u      REG    8,2    118400   8399673 /var/atlassian/jira/monitor/ConnectionPoolGraph.rrd4j
java    22605  bin  920u      REG    8,2    236624   8399674 /var/atlassian/jira/monitor/DatabaseReadWritesGraph.rrd4j
java    22605  bin  923wW     REG    8,2         0   8269532 /var/atlassian/jira/caches/indexesV1/comments/write.lock
java    22605  bin  924wW     REG    8,2         0   8399860 /var/atlassian/jira/caches/indexesV1/issues/write.lock
java    22605  bin  925wW     REG    8,2         0   8399862 /var/atlassian/jira/caches/indexesV1/changes/write.lock
java    22605  bin  926wW     REG    8,2         0   8399864 /var/atlassian/jira/caches/indexesV1/worklogs/write.lock
```

# task b
Running [test_2.sh](test_2.sh) result

```bash
denis@vmi510286 ~/ruvds/plt (master)$ ./test_2.sh 
File ./tmp/test_1629568397_1.txt created
File ./tmp/test_1629568397_2.txt created
File ./tmp/test_1629568397_3.txt created
File ./tmp/test_1629568397_4.txt created
File ./tmp/test_1629568397_5.txt created
File ./tmp/test_1629568397_6.txt created
File ./tmp/test_1629568397_7.txt created
File ./tmp/test_1629568397_8.txt created
File ./tmp/test_1629568397_9.txt created
File ./tmp/test_1629568397_10.txt created
```

Content example test_1629568397_10.txt

```bash
denis@vmi510286 ~/ruvds/plt (master)$ cat ./tmp/test_1629568397_10.txt
i9tyd221ceMYBLT1QdfJIuQE2pbern9VY54pVhSjrTeEHsJDBIdZuGidBZCLPtVGuatr45zNT8Hodrr0TB3LO1pY8hXwm2vWFo91g4MWydKsnq9VRpxxVP5GWlnHlCGM2BFfiyVDcV9Mg0xuWrsGoJ81uJDqauMxKJTQFGTS4GsCIS8pDMaCiP1LfKukYxru3LJdoiEnsJXuOpOaoUl6vu0faOWx1sGTvwl7RBIihQ5HeB03xQ0NRyMIUZXwq3JbjN2L0P1NZfoSipO1XY6TEE0rJwpuXeLqn0CNHdf9wwN5hGsLazf6zmh8XUJQeqO9sUUydtvNRnSk5tupr9xJ62rMDFu4dqWTXIBzIcOHyxKQru6NjLUBamoFPiRI46499DwrOU8jKAx1hrNbi51yheKHkLFgb4Fc6FHUvWGosKeGvwSSmh9Gtpf1acSxhvrdbtk0d4sZCvHTMhbvdorLN0JIMCY8D3qa0hSw3tv64HCyxZKNBEBIZtUNwTnY7zvOPNmb3K52rdWSnhoOBYGxxQ2zVml4JSexWy7iusJV7he32HjXo6spMlAEwCeTITXOMTqByxb1cCsuILv5GkoiwqTRqyUYUyw9etHjySWhIMXWOq7CmcGZym5sI8Ws8DE7EdFWOAVnPZomBQLuFrXZ3LlbRjqqgVPM4Y1jbxNFzufVvlMfGxalOg1AL8v04Swdxs1tHb0AU93KtCePjfzjFda3tmqoxU4dV5cXkzpgHS3KKuJkdFwOzm6PvTbHAsEcLsKdKQ1ovAwf9y9Cngk9XwKAuMplSMa57nyzq0lrBdTJMojXr9lsmoVgN7PJLKEPh0TFY2M2keYEkqqhQPUGiea8fDL6tZZyyt1ByPWwubQ8OacxzcoL9ldkzrxz2WHIfR97PgykqUbYvIBPhrofIm9GiGzSvOunjrgV8X5tiKDmlFqC6GZAkkRRceRshZ5gPSpZScemJOJuJReio8q7rmszt1coOxH22wgGm8ub
```
To schedule [test_2.sh](test_2.sh) to run every 6 hours it supoused to use
"1 */6 * * * $PWD/test_2.sh > /dev/null" settings for user's crontab job.
Here is the [cron_script.sh](cron_script.sh) as an attempt to automate this task, but it must be checked in a certain enviroment.

# task a
Generate 100 files by [gener_cnf.sh](gener_cnf.sh) for testing purpose:

```bash
denis@vmi510286 ~/ruvds/plt (master)$ ls -la tmp/conf
total 816
drwxrwxr-x 2 denis denis 12288 Aug 22 00:02 .
drwxrwxr-x 3 denis denis  4096 Aug 21 23:30 ..
-rw-rw-r-- 1 denis denis   120 Aug 22 00:02 test_1629578782_100.txt
-rw-rw-r-- 1 denis denis   120 Aug 22 00:02 test_1629578782_10.txt
-rw-rw-r-- 1 denis denis   120 Aug 22 00:02 test_1629578782_11.txt
......

```

The [test_1.sh](test_1.sh) modified all the files like this one:

```bash
denis@vmi510286 ~/ruvds/plt (master)$ cat tmp/conf/test_1629578782_100.txt
Domain_1 name: nginx-02.com and Domain_2 name: nginx-02.com
Domain_3 name: nginx-02.com and Domain_4 name: nginx-02.com
```