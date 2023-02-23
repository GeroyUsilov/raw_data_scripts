#!/bin/bash
export DATADIR=/project2/amurugan/danio_rnaseq
export GENOMEDIR=/project2/amurugan/danio_genomes/STAR_GRCz11_12102020
sample=$1
files=( $DATADIR/$sample/*.gz )
STAR --runThreadN 15 --outReadsUnmapped Fastx --outFileNamePrefix $DATADIR/$sample/$sample  --readFilesCommand zcat --genomeDir $GENOMEDIR --quantMode GeneCounts --readFilesIn "${files[0]}" "${files[1]}" 
echo "$sample is done"
