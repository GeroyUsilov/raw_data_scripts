#!/bin/bash
sample=$1
export DATADIR=/project2/amurugan/danio_rnaseq/$sample
export ADAPTER=$HOME/raw_data_scripts/nexterra.fa
echo $1
export INPUT_R1=$DATADIR/EJ*R1*fastq*
export OUTPUT_R1=$DATADIR/${sample}_r1_adapter_trimmed.fastq
$HOME/scythe/scythe -a $ADAPTER -o $OUTPUT_R1 $INPUT_R1
echo "R1 done"

export INPUT_R2=$DATADIR/EJ*R2*fastq*
export OUTPUT_R2=$DATADIR/${sample}_r2_adapter_trimmed.fastq
$HOME/scythe/scythe -a $ADAPTER -o $OUTPUT_R2 $INPUT_R2


echo $1"done"