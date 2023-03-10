#!/bin/bash
export REFDIR=/danio_rnaseq/ref
export GENOMEDIR=/danio_rnaseq/genome

STAR --runThreadN 4 --runMode genomeGenerate --genomeDir $GENOMEDIR --genomeFastaFiles $REFDIR/Danio_rerio.GRCz11.dna.primary_assembly.fa --sjdbGTFfile $REFDIR/Danio_rerio.GRCz11.108.gtf