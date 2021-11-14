


# USAGE INSTRUCTIONS ================================================
# Script to automate calling of genscan on chunks of split fasta files.
# Download genome from ftp servers
# Split the fasta file into 2mb chunks using `fastasplit [fastafile] [outputdir] -c [N_chunks]` where N_chunks is the number of chunks to splij into. For me I use file_size divided by 2mb, which ends up to be around 100.
# Then save all these files in a directory named YOUR_SPECIES_DIR, and point the variable SPECIES below to YOUR_SPECIES_DIR.



# MODIFY THIS PART ===================================================

BASEDIR="/local/data/public/2021/jgc47/Desktop/Genomics_I/assignment2/Genomics-I-Assignment"

PROGRAMS="/local/data/public/Genomics_1/programs" # programs base directory

SPECIES="UCI_Dpse_MV25" # drosophila species accession number (EBI ENA)

OUTFILE=$BASEDIR/$SPECIES.out.txt

# Do not overwrite existing output file
if [[ -e $OUTFILE ]]; then
	echo "Error. Output file [$OUTFILE] already exists."
	exit
fi


# DO NOT MODIFY THIS PART ============================================

# path to executable
GENSCAN_EXE=$PROGRAMS/bin/genscan 

# parameter file. closest one to drosophile.
PARAMF=$PROGRAMS/genscan/lib/HumanIso.smat 

touch $OUTFILE # create output text file

# for fastachunk in $BASEDIR/$SPECIES/$SPECIES.*_chunk_*; do # run genscasn in 2mb chunks
for fastachunk in $BASEDIR/$SPECIES/*; do # run genscasn in 2mb chunks

	# do not run genscan on the large fasta file
	# assumes that fasta file has same name as folder i.e. $SPECIES
	if [[ ${fastachunk##*/} =~ $SPECIES ]]; then 
		# it is not a chunk
		echo "skipping file $SPECIES"
		continue
	fi	

	# run genscan on chunk
	$GENSCAN_EXE $PARAMF $fastachunk >> $BASEDIR/$SPECIES.out.txt

	# progress 
	echo "Completed genscan for $fastachunk"
done
