#!/bin/bash
#SBATCH --job-name=scythe
#SBATCH --output=scythe_sbatch.out
#SBATCH --error=scythe_sbatch.err
#SBATCH --account=pi-amurugan
#SBATCH --time=00:15:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=4000

./scythe.sh $1