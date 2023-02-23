import numpy as np
from Bio import SeqIO
import sys
print(sys.argv)
filename = sys.argv[1]
min_avg_score =int(sys.argv[2])
start_filter_pos = int(sys.argv[3])
filtered_sequences = []
i = 0
for record in SeqIO.parse(filename, "fastq"):
    score=record.letter_annotations["phred_quality"]
    if np.mean(score[start_filter_pos:]) > min_avg_score:
        filtered_sequences.append(record)
    i = i + 1
    if i%1000 == 0:
        print(i)
        sys.stdout.write("\033[F")
outputname = filename.split('.')[0] + '_filtered' + '.fastq' 
SeqIO.write(filtered_sequences, outputname, "fastq")
print('Done')