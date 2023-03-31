#!/bin/bash
export DATADIR=/project2/amurugan/danio_rnaseq
sample=$1
export INPUT_R1=$DATADIR/$sample/EJ*R1*fastq*.gz
export INPUT_R2=$DATADIR/$sample/EJ*R2*fastq*.gz
sickle pe -f $INPUT_R1 -r $INPUT_R2 -o "${DATADIR}/${sample}/${sample}_r1_filtered.fastq.gz" -p "${DATADIR}/${sample}/${sample}_r2_filtered.fastq.gz" -g -t sanger -q 36 -l 30 -s $DATADIR/$sample/trimmed_singles.fastq
mv sickle_sbatch.out $DATADIR/$sample
mv sickle_sbatch.err $DATADIR/$sample