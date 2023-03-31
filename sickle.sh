#!/bin/bash
export DATADIR=/project2/amurugan/danio_rnaseq
sample=$1
files=( $DATADIR/$sample/*.gz )
export INPUT_R1=$DATADIR/EJ*R1*fastq*.gz
export INPUT_R2=$DATADIR/EJ*R2*fastq*.gz
sickle pe -f $INPUT_R1 -r $INPUT_R2 -o "${DATADIR}/${sample}/${sample}_r1_filtered.fastq.gz" -p "${DATADIR}/${sample}/${sample}_r2_filtered.fastq.gz" -g -t sanger -q 36 -l 40 -s $DATADIR/$sample/trimmed_singles.fastq