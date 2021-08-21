## DevOps Academy Test 

# task c
Running test_3.sh result

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
