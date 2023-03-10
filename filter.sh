#!/bin/bash
export DATADIR=/project2/amurugan/danio_rnaseq
sample=$1
r1_in_gz= $DATADIR/$sample/*R1*.gz 
r2_in_gz= $DATADIR/$sample/*R2*.gz 
gunzip $r1_in_gz
gunzip $r2_in_gz
r1_in= $DATADIR/$sample/*R1*.fastq
r2_in= $DATADIR/$sample/*R2*.fastq
python filtering.py $r1_in $r2_in 30 35
files_to_zip=( $DATADIR/$sample/*.fastq )
gzip ${files_to_zip[*]}
echo "$sample is done"
