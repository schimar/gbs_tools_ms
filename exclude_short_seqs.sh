#! /bin/bash
# cd /home/mschilling/Desktop/gbs15/scripts_zg/ind/

for i in centroids*; do
    id=$(echo $i | cut -f2 -d_)
    echo $id
    ./exclude_short_seqs.py $i sub_$i 
done  

rsync -avz sub_centroids* subc/
# 
