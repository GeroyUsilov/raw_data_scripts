#!/bin/bash
sample=$1
export DATADIR=/project2/amurugan/danio_rnaseq/$sample
export INPUT_R1_zipped=$DATADIR/EJ*R1*fastq*.gz
export INPUT_R2_zipped=$DATADIR/EJ*R2*fastq*.gz

unpigz $INPUT_R1_zipped
unpigz $INPUT_R2_zipped