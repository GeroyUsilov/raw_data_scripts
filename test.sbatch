#!/bin/bash
#SBATCH --job-name=test
#SBATCH --output=test.out
#SBATCH --error=test.err
#SBATCH --account=pi-amurugan
#SBATCH --time=00:1:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=400

module load sickle
./test.sh $1 &> /project2/amurugan/test_results.txt