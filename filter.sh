#!/bin/bash
sample=$1
export OUTDIR=/scratch/midway2/cjrusso/danio_nosedive_filtered/$sample
echo "$sample filtering"
r1_in=$OUTDIR/*R1*.fastq 
r2_in=$OUTDIR/*R2*.fastq

echo ${r1_in[0]}
echo ${r2_in[0]}
python efficient_filtering.py ${r1_in[0]} ${r2_in[0]} 28 35 $OUTDIR

echo "$sample is done"
