#!/bin/bash


# USAGE INSTRUCTIONS ================================================

# Script to automate calling of genscan on chunks of split fasta files.
# Download genome from ftp servers
# Split the fasta file into 2mb chunks using `fastasplit [fastafile] [outputdir] -c [N_chunks]` where N_chunks is the number of chunks to splij into. For me I use file_size divided by 2mb, which ends up to be around 100.
# Then save all these files in a directory named YOUR_SPECIES_DIR, and point the variable SPECIES below to YOUR_SPECIES_DIR.



# MODIFY THIS PART ===================================================

basedir="/local/data/public/2021/jgc47/Desktop/Genomics_I/assignment2/Genomics-I-Assignment/1.1.2"




# DO NOT MODIFY THIS PART ============================================

# provide as argument one of the following AAKO01, AAUP01, AAUE02, UCI_Dpse_MV25
species="$1"

# output directory
outdir="$basedir"/genscan_output

# output text file
outfile="$outdir"/"$species".out.txt

# Do not overwrite existing output file
if [[ -e $outfile ]]; then
	echo "Error. Output file [$OUTFILE] already exists."
	exit
fi

# create output text file
touch $outfile 

# input directory
inputdir="$basedir"/genscan_input


# run genscan in 2mb chunks for that species
for file in "$inputdir"/$species/*; do

	# skip directories
	if [[ -d $file ]]; then
		echo "skipping directory $file"
		continue
	fi
	
	# skip large files as it will run out of memory
	if (( $(stat -c%s $file) > 2500000 )); then
		echo "skipping large file $file"
		continue
	else
		# run genscan on fasta chunk and append to outfile
		/local/data/public/Genomics_1/programs/bin/genscan /local/data/public/Genomics_1/programs/genscan/lib/HumanIso.smat "$file" >> "$outfile"

		# progress 
		echo "Completed genscan for $file"
	fi
done



