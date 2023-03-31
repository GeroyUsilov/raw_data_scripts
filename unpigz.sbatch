#!/bin/bash
#SBATCH --job-name=pigz
#SBATCH --output=unpigz.out
#SBATCH --error=unpigz.err
#SBATCH --account=pi-ejerison
#SBATCH --time=00:10:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=10
#SBATCH --mem-per-cpu=1300
module load pigz
./unpigz.sh $1