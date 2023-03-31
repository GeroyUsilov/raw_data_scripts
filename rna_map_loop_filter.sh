#!/bin/bash
export DATADIR=/project2/amurugan/danio_rnaseq
export GENOMEDIR=/project2/amurugan/danio_genomes/STAR_GRCz11_12102020
sample=$1
files=( $DATADIR/$sample/*_filtered.fastq.gz )
STAR --runThreadN 15 --outReadsUnmapped Fastx --outFileNamePrefix $DATADIR/$sample/$sample  --readFilesCommand zcat --genomeDir $GENOMEDIR --quantMode GeneCounts --readFilesIn "${files[0]}" "${files[1]}" 
echo "$sample is done"
samtools view -bo $DATADIR/$sample/${sample}Aligned.out.bam $DATADIR/$sample/${sample}Aligned.out.sam
rm $DATADIR/$sample/${sample}Aligned.out.sam
