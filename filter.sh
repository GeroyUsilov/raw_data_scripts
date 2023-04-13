#!/bin/bash
sample=$1
export DATADIR=/project2/amurugan/danio_rnaseq
export OUTDIR=/scratch/midway2/cjrusso/danio_nosedive_filtered/$sample/
echo "$sample filtering"
r1_in_gz=$DATADIR/$sample/*R1*.gz 
r2_in_gz=$DATADIR/$sample/*R2*.gz 
echo "R1 filename zipped $r1_in_gz"
echo "R2 filename zipped $r2_in_gz"
unpigz $r1_in_gz
unpigz $r2_in_gz
r1_in=($DATADIR/$sample/*R1*.fastq)
r2_in=($DATADIR/$sample/*R2*.fastq)
echo "${r1_in[0]}"
echo "${r2_in[0]}"
python efficient_filtering.py "${r1_in[0]}" "${r2_in[0]}" 28 35 $OUTDIR
echo "zipping"
files_to_zip=( $DATADIR/$sample/*.fastq )
pigz ${files_to_zip[*]}
files_to_zip=( $OUTDIR*.fastq )
pigz ${files_to_zip[*]}
echo "$sample is done"
