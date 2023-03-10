#!/bin/bash
#SBATCH --job-name=filter
#SBATCH --output=filter_sbatch.out
#SBATCH --error=filter_sbatch.err
#SBATCH --account=pi-amurugan
#SBATCH --time=00:35:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=8000

module load python
./filter.sh $1