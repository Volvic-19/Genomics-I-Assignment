# 1.1.1 Annotation by alignment
Align the _D. melanogaster_ transcripts and proteins to your species genome, e.g. using blastn/x.                                                                                                                                                                                                                                                                   <br> 

# Steps to produce outputs 
Using the example of _D. sechilis_ or AAKO01

`cd Genomics-I-Assignment/1.1.1`

# 1. Create custom databases from species of interest genome

The argument following `-out` has to be relative path to the `blast_db` directory (unless you are running it within the `blast_db` directory), followed by the database alias.
So it is in this format:

```... -out [relative_path_to_database_folder]/[database_alias e.g. species accession]```

* `/local/data/public/Genomics_1/programs/bin/makeblastdb -in ../raw_sequences/AAKO01.fasta -dbtype nucl -out blast_db/AAKO01`
* `/local/data/public/Genomics_1/programs/bin/makeblastdb -in ../raw_sequences/AAKO01.fasta -dbtype prot -out blast_db/AAKO01`



# 2. Run `run_blastn.sh` or `run_tblastn.sh`

Run `blastn` to align _D. melanogaster_ transcriptome against species of interest genome, or `tblastn`  to align _D. melanogaster_ proteome against species of interest genome.

Specify the species variable - either AAKO01 (_D. sechili_), AAPU01 (_D. yakuba_), UCI_Dpse_MV25 (_D. pseudoobscura_), or AAUE02 (_D. mojavensis_).

* `./src/run_blastn.sh AAKO01 &>/dev/null &`
and
* `./src/run_tblastn.sh AAKO01 &>/dev/null &`

and blast outputs will go to the `blast_output` directory. In there there is currently the zipped output for AAKO01.

I have found that `tblastn` takes significantly longer than `blastn`, around 10 times longer.
