#!/bin/bash
export REFDIR=/oak/stanford/groups/quake/ejerison/Resources/zebrafish_reference_genome/GRCz11
export GENOMEDIR=/oak/stanford/groups/quake/ejerison/Resources/STAR_GRCz11_12102020

STAR --runThreadN 4 --runMode genomeGenerate --genomeDir $GENOMEDIR --genomeFastaFiles $REFDIR/Danio_rerio.GRCz11.dna.primary_assembly.fa --sjdbGTFfile $REFDIR/Danio_rerio.GRCz11.102.gtf