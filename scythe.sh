#!/bin/bash
sample=$1
export DATADIR=/project2/amurugan/danio_rnaseq/$sample
export ADAPTER=$HOME/raw_data_scripts/nexterra.fa
export INPUT_R1_zipped=$DATADIR/EJ*R1*fastq.gz
export INPUT_R2_zipped=$DATADIR/EJ*R2*fastq.gz
echo $1
gunzip $INPUT_R1_zipped
echo "unzipped R1 "
export INPUT_R1=$DATADIR/EJ*R1*fastq
export OUTPUT_R1=$DATADIR/${sample}_r1_adapter_trimmed.fastq
$HOME/scythe/scythe -a $ADAPTER -o $OUTPUT_R1 $INPUT_R1
gzip $INPUT_R1
gzip $OUTPUT_R1
echo "zipped R1"
gunzip $INPUT_R2_zipped
echo "unzipped R2"
export INPUT_R2=$DATADIR/EJ*R2*fastq
export OUTPUT_R2=$DATADIR/${sample}_r2_adapter_trimmed.fastq
$HOME/scythe/scythe -a $ADAPTER -o $OUTPUT_R2 $INPUT_R2
gzip $INPUT_R2
gzip $OUTPUT_R2
echo "zipped R2"
echo $1 + "done"