bashninja
=========

chained bash commands for analysis

Look for trees with inconsistent number of entries 
```bash
 ls *.root | awk '{print "~/testforest.exe "$1" &> ~/tmp.txt ; echo "$1"; echo ; grep -v \"does not exist\" ~/tmp.txt | grep -v \"unknown branch\" | grep -v before | grep -v after | grep -v Collision | grep -v init ; echo =======  " }' | bash > ~/treestatus.log
```
