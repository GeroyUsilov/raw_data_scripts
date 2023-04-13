#!/bin/bash
sample=$1
export DATADIR=/project2/amurugan/danio_rnaseq/$sample
export OUTDIR=/scratch/midway2/cjrusso/danio_nosedive_filtered/$sample
zipped_files=$DATADIR/EJ*.gz
cp ${zipped_files[*]} $OUTDIR
zipped_files=$OUTDIR/EJ*.gz
unpigz ${zipped_files[*]}
