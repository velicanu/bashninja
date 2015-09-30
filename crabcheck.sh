if [ $# -lt 2 ]
then
  echo "Usage: ./crabcheck.sh <output-dir> <num-jobs>"
  echo "Checks output directory for duplicates and missing root files"
  exit 1
fi

seq 1 $2 | sort > a.txt
ls $1 > rawlist.txt
cat rawlist.txt | awk -F '_' '{print $2}' | sort > b.txt

echo -e "\E[31mPossible duplicates:"
tput sgr0 
comm -13 a.txt b.txt

echo 
echo -e "\E[33mMissing files:"
tput sgr0 
comm -23 a.txt b.txt
echo 

rm a.txt b.txt rawlist.txt
