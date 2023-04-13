import numpy as np
from Bio import SeqIO
import sys
from filtering_fn import *

print(sys.argv)
output_dir = sys.argv[5]
r1_filename = sys.argv[1]
r2_filename = sys.argv[2]
r1_output_filename = output_dir + "/r1" + '_nosedive_filtered' + '.fastq' 
r2_output_filename = output_dir +  "/r2" + '_nosedive_filtered' + '.fastq' 
seq_ln = 100
n_seqs = count_seqs(r1_filename)
print(r1_filename)
min_avg_score =int(sys.argv[3])
start_filter_pos = int(sys.argv[4])

input_seq_iterator_r1 = SeqIO.parse(r1_filename, "fastq")
input_seq_iterator_r2 = SeqIO.parse(r2_filename, "fastq")

input_seq_iterator_r1_filtered = (records[0] for records in zip(input_seq_iterator_r1,input_seq_iterator_r2) if (np.mean(records[0].letter_annotations["phred_quality"][start_filter_pos:seq_ln]) > min_avg_score) and (np.mean(records[1].letter_annotations["phred_quality"][start_filter_pos:seq_ln]) > min_avg_score))

with open(r1_output_filename, "w") as output_handle:
    SeqIO.write(input_seq_iterator_r1_filtered, output_handle, "fastq")

input_seq_iterator_r1 = SeqIO.parse(r1_filename, "fastq")
input_seq_iterator_r2 = SeqIO.parse(r2_filename, "fastq")

input_seq_iterator_r2_filtered = (records[1] for records in zip(input_seq_iterator_r1,input_seq_iterator_r2) if (np.mean(records[0].letter_annotations["phred_quality"][start_filter_pos:seq_ln]) > min_avg_score) and (np.mean(records[1].letter_annotations["phred_quality"][start_filter_pos:seq_ln]) > min_avg_score))


with open(r2_output_filename, "w") as output_handle:
    SeqIO.write(input_seq_iterator_r2_filtered, output_handle, "fastq")