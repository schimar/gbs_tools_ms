#! /bin/bash
# cd /home/mschilling/Desktop/gbs15/scripts_zg/ind/

for i in */; do
    id=$(echo $i | cut -f1 -dc)
    id=$(echo $id | cut -f1 -dt)
    #echo $id
    cd $i
    /home/mschilling/ngs_tools/get_tophat_align_summary.py $id 
    cd ..
done  

# and then delete all runInfo* files, no longer needed
