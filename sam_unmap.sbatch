#!/bin/bash
#SBATCH --job-name=sam_unmapped
#SBATCH --output=sam_unmapped.out
#SBATCH --error=sam_unmapped.err
#SBATCH --account=pi-amurugan
#SBATCH --time=00:30:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=15
#SBATCH --mem-per-cpu=3000

module load samtools
samtools view -f 4 /project2/amurugan/danio_rnaseq/test_included/test_includedAligned.out.bam > /project2/amurugan/danio_rnaseq/test_included/unmapped.sam
