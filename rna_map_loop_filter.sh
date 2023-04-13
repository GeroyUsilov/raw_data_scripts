#!/bin/bash
export DATADIR=/scratch/midway2/cjrusso/danio_nosedive_filtered
export GENOMEDIR=/project2/amurugan/danio_genomes/STAR_GRCz11_12102020
sample=$1
files=( $DATADIR/$sample/*_filtered.fastq )
STAR --runThreadN 15 --outReadsUnmapped Fastx --outFileNamePrefix $DATADIR/$sample/$sample  --genomeDir $GENOMEDIR --quantMode GeneCounts --readFilesIn "${files[0]}" "${files[1]}" 
echo "$sample is done"
