import numpy as np
from Bio import SeqIO
from itertools import compress

def count_seqs(filename):
    i = 0
    for record in SeqIO.parse(filename, "fastq"):
        i = i + 1
    return i

def parse_fastq(seq_len,n_seqs,filename):
    i = 0
    quality_matrix = np.zeros((seq_len,n_seqs))
    sequences = []
    for record in SeqIO.parse(filename, "fastq"):
        score=record.letter_annotations["phred_quality"]
        sequences.append(record)
        quality_matrix[:,i] = score   
        i = i +1
    return quality_matrix, sequences