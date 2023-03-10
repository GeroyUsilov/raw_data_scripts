import numpy as np
from Bio import SeqIO
import sys
from filtering_fn import *

print(sys.argv)
r1_filename = sys.argv[1]
r2_filename = sys.argv[2]
r1_output_filename = r1_filename[:-6] + '_filtered' + '.fastq' 
r2_output_filename = r2_filename[:-6] + '_filtered' + '.fastq' 
seq_ln = 100
n_seqs = count_seqs(r1_filename)
print(r1_filename)
min_avg_score =int(sys.argv[3])
start_filter_pos = int(sys.argv[4])

quality_matrix_r1, sequences_r1 = parse_fastq(seq_ln,n_seqs,
                                            r1_filename)
quality_matrix_r2, sequences_r2 = parse_fastq(seq_ln,n_seqs,
                                            r2_filename)
to_retain = (np.mean(quality_matrix_r1[start_filter_pos:100,:],axis=0) > min_avg_score) & (np.mean(quality_matrix_r2[start_filter_pos:100,:],axis=0) > min_avg_score)

with open(r1_output_filename, "w") as output_handle:
    SeqIO.write(list(compress(sequences_r1, to_retain)), output_handle, "fastq")
with open(r2_output_filename, "w") as output_handle:
    SeqIO.write(list(compress(sequences_r2, to_retain)), output_handle, "fastq")

print('Done')