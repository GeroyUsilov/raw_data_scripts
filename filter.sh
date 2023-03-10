#!/bin/bash
export DATADIR=/project2/amurugan/danio_rnaseq
sample=$1
echo "$sample filtering"
r1_in_gz=$DATADIR/$sample/*R1*.gz 
r2_in_gz=$DATADIR/$sample/*R2*.gz 
echo "R1 filename zipped $r1_in_gz"
echo "R2 filename zipped $r1_in_gz"
gunzip $r1_in_gz
gunzip $r2_in_gz
r1_in=($DATADIR/$sample/*R1*.fastq)
r2_in=($DATADIR/$sample/*R2*.fastq)
echo "${r1_in[0]}"
echo "${r2_in[0]}"
python filtering.py "${r1_in[0]}" "${r2_in[0]}" 30 35
files_to_zip=( $DATADIR/$sample/*.fastq )
gzip ${files_to_zip[*]}
echo "$sample is done"
