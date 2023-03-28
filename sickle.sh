#!/bin/bash
export DATADIR=/project2/amurugan/danio_rnaseq
sample=$1
files=( $DATADIR/$sample/*.gz )
sickle pe -f "${files[0]}" -r "${files[1]}" -o "filtered_{files[0]}" -p "filtered_{files[1]}" -g -t sanger -q 35 -l 40 -s $DATADIR/$sample/trimmed_singles.fastq