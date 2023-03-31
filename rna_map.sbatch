#!/bin/bash
#SBATCH --job-name=rna_map
#SBATCH --output=rna_map_sbatch.out
#SBATCH --error=rna_map_sbatch.err
#SBATCH --account=pi-amurugan
#SBATCH --time=00:25:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=15
#SBATCH --mem-per-cpu=3000

module load STAR/2.6.1b
./rna_map_loop.sh $1
