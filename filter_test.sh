#!/bin/bash
export DATADIR=../test_data
sample=$1
zipped_files=( $DATADIR/$sample/*.gz )
gunzip "${zipped_files[0]}"
files=( $DATADIR/$sample/*.fastq )
python filtering.py "${files[0]}" 30 35
files_to_zip=( $DATADIR/$sample/*.fastq )
echo ${files_to_zip[*]}
gzip ${files_to_zip[*]}
echo "$sample is done"
