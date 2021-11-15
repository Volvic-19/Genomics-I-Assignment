#!/bin/bash

# script to add fasta header to each 2mb chunk
# only needed for Drosophila pseudoobscura because its genome is already assembled 
# the rest of the species happen to be in contigs each <2mb by chance 

# ARG1 = HEADER STRING
# ARG2,3,... = FILES TO ADD HEADER TO

# example usage:
# ./src/add_header.sh ">NC_046683.1 Drosophila pseudoobscura strain MV2-25 chromosome X, UCI_Dpse_MV25, whole genome shotgun sequence" UCI_Dpse_MV25.fna_chunk_0000054[0-3]*

header=$1
shift

for file in "$@"; do
	awk -v HEADER="$header" 'BEGIN{print HEADER} {print}' "$file" > "$file".new
done
	
