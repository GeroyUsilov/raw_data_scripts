#!/bin/bash
sample=$1
export DATADIR=/project2/amurugan/danio_rnaseq/$sample
export ADAPTER=$HOME/raw_data_scripts/nexterra.fa
export INPUT_R1_zipped=$DATADIR/EJ*R1*fastq.gz
export INPUT_R2_zipped=$DATADIR/EJ*R2*fastq.gz
echo $1

export OUTPUT_R1=$DATADIR/${sample}_r1_adapter_trimmed.fastq
$HOME/scythe/scythe -a $ADAPTER -o $OUTPUT_R1 $INPUT_R1_zipped
gzip $OUTPUT_R1

echo "r1 done"

export OUTPUT_R2=$DATADIR/${sample}_r2_adapter_trimmed.fastq
$HOME/scythe/scythe -a $ADAPTER -o $OUTPUT_R2 $INPUT_R2_zipped
gzip $OUTPUT_R2

echo $sample" done"