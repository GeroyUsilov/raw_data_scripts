#!/bin/bash
#SBATCH --job-name=sickle
#SBATCH --output=sickle_sbatch.out
#SBATCH --error=sickle_sbatch.err
#SBATCH --account=pi-amurugan
#SBATCH --time=00:40:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --mem-per-cpu=1400

module load sickle
./sickle.sh $1