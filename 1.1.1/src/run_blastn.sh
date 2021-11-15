#! /usr/bin/env bash

# user argument ===================================================
# change according to species accession number
# either AAKO01, AAPU01, AAUE02, UCI_Dpse_MV25
species="$1"

# blastn parameters ===============================================

# working directory - contains fasta files to be read as database ("referece")
# and fasta files to be used query sequence
basedir=/local/data/public/2021/jgc47/Desktop/Genomics_I/assignment2/Genomics-I-Assignment
wdir="$basedir"/1.1.1
datadir="$basedir"/raw_sequences/Dmel

# full path to blastdb made from reference sequence - 1 of the 4 fly genomes
# blastdb files are generated using makeblastdb command. 
# makeblastdb -in AAKO01/AAKO01.fasta -dbtype nucl -out db/AAKO01. -title AAKO01
dbdir=blast_db/"$species"

# path to query sequence - D. melanogaster transcripts
# download from http://ftp.flybase.net/genomes/Drosophila_melanogaster/current/fasta/
query="$datadir"/dmel-all-transcript-r6.42.fasta

# output directory
outdir="$wdir"/blast_output

# if blast output directory doesn't exist, create it
if [[ ! -d "$outdir" ]]; then
	mkdir "$outdir"
fi

output="$outdir"/"$species".blastn.out


# blast command ======================================================

blastn -query "$query" -db "$dbdir" -out "$output" -outfmt 7 -num_threads 8


# a list of output formats for reference

 #-outfmt <String>
   #alignment view options:
     #0 = pairwise,
     #1 = query-anchored showing identities,
     #2 = query-anchored no identities,
     #3 = flat query-anchored, show identities,
     #4 = flat query-anchored, no identities,
     #5 = XML Blast output,
     #6 = tabular,
     #7 = tabular with comment lines,
     #8 = Text ASN.1,
     #9 = Binary ASN.1,
    #10 = Comma-separated values,
    #11 = BLAST archive format (ASN.1) 

