#!/bin/bash
#SBATCH --job-name=pigz
#SBATCH --output=pigz.out
#SBATCH --error=pigz.err
#SBATCH --account=pi-ejerison
#SBATCH --time=00:5:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=10
#SBATCH --mem-per-cpu=1300
module load pigz
$HOME/raw_data_scripts/pigz.sh $1