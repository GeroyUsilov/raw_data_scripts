#!/bin/bash
export DATADIR=/project2/amurugan/danio_rnaseq
sample=$1
files=( $DATADIR/$sample/*.gz )
sickle pe -f "${files[0]}" -r "${files[1]}" -o "${DATADIR}/${sample}/${sample}_r1_filtered.fastq.gz" -p "${DATADIR}/${sample}/${sample}_r2_filtered.fastq.gz" -g -t sanger -q 35 -l 38 -s $DATADIR/$sample/trimmed_singles.fastq