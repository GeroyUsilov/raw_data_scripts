#!/bin/bash
sample=$1
export DATADIR=/project2/amurugan/danio_rnaseq/$sample
export INPUT_R1=$DATADIR/EJ*R1*fastq*
export INPUT_R2=$DATADIR/EJ*R2*fastq*

pigz $INPUT_R1

pigz $INPUT_R2