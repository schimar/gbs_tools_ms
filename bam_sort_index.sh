#! /bin/bash
# cd /home/mschilling/Desktop/gbs15/scripts_zg/ind/

for i in *.bam; do
    #file=$(echo $i | cut -f7 -d/)
    id=$(echo $i | cut -f1 -d.)
    id=$(echo $id | cut -f7 -d/)
    #RG=\'@RG'\t'ID:${id}\'
    echo $id
    #samtools view -S -u $i -o ${id}.bam
    samtools sort $i ${id}.sorted
    samtools index ${id}.sorted.bam

done


