#!/bin/bash
#SBATCH --job-name=danio_genome
#SBATCH --output=genome_sbatch.out
#SBATCH --error=genome_sbatch.err
#SBATCH --account=pi-amurugan
#SBATCH --time=02:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=15
#SBATCH --mem-per-cpu=3000

module load STAR/2.6.1b
./make_STAR_genome_db_danio.sh
