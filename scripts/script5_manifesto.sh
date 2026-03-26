#!/bin/bash
# script5_manifesto.sh

echo "--- Open Source Manifesto Generator ---"
echo ""

# Questions (similar to others but not identical)
echo -n "Which tool do you use the most? "
read tool

echo -n "What does freedom mean to you in one word? "
read freedom

echo -n "What would you like to build in the future? "
read build

cur_date=$(date +%Y-%m-%d)
user_name=$(whoami)
outfile="manifesto_${user_name}_${cur_date}.txt"

echo ""
echo "Generating manifesto..."

# Writing to file
echo "My Open Source Manifesto" > $outfile
echo "-------------------------" >> $outfile
echo "The tool I use the most is $tool." >> $outfile
echo "For me, freedom in open source means $freedom." >> $outfile
echo "In the future, I would like to build $build." >> $outfile
echo "Written by $user_name on $cur_date" >> $outfile

echo ""
echo "Saved to $outfile"
echo ""
cat $outfile