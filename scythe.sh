#!/bin/bash
sample=$1
export DATADIR=/scratch/midway2/cjrusso/danio_nosedive_filtered
export ADAPTER=$HOME/raw_data_scripts/nexterra.fa
files=( $DATADIR/$sample/*_filtered.fastq )
echo $1
export INPUT_R1="${files[0]}"
export OUTPUT_R1=$DATADIR/${sample}_r1_adapter_trimmed.fastq
$HOME/scythe/scythe -a $ADAPTER -o $OUTPUT_R1 $INPUT_R1
echo "R1 done"

export INPUT_R2="${files[1]}"
export OUTPUT_R2=$DATADIR/${sample}_r2_adapter_trimmed.fastq
$HOME/scythe/scythe -a $ADAPTER -o $OUTPUT_R2 $INPUT_R2


echo $1"done"