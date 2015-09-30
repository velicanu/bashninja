bashninja
=========

chained bash commands for analysis

Look for trees with inconsistent number of entries 
```bash
 ls *.root | awk '{print "~/testforest.exe "$1" &> ~/tmp.txt ; echo "$1"; echo ; grep -v \"does not exist\" ~/tmp.txt | grep -v \"unknown branch\" | grep -v before | grep -v after | grep -v Collision | grep -v init ; echo =======  " }' | bash > ~/treestatus.log
```

Example usage of crabcheck.sh:
```bash
./crabcheck.sh /mnt/hadoop/cms/store/user/velicanu/HydjetMB_2076GeV_FOREST_752_v0 1899
```

