#!/bin/bash
#SBATCH --job-name=sickle
#SBATCH --output=sickle_sbatch.out
#SBATCH --error=sickle_sbatch.err
#SBATCH --account=pi-amurugan
#SBATCH --time=00:15:00
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=3000

module load sickle
./sickle.sh $1