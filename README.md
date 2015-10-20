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

Example usage of crab3check.sh:
```bash
./crab3check.sh /mnt/hadoop/cms/store/user/velicanu/HIHighPt/HIHighPt_HIRun2011_HLT_HISinglePhoton20_HISinglePhoton30_FOREST_753p1_v0/151019_172910/0000/ 500
```

