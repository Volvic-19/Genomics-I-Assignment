
Steps to produce outputs (using the example of D. sechilis or AAKO01)


1. Create databases
```
cd 1.1.1/
/local/data/public/Genomics_1/programs/bin/makeblastdb -in ../raw_sequences/AAKO01.fasta -dbtype nucl -out blast_db/AAKO01
/local/data/public/Genomics_1/programs/bin/makeblastdb -in ../raw_sequences/AAKO01.fasta -dbtype prot -out blast_db/AAKO01
```

2. Run run_blastn.sh or run_tblastn.sh

Change the $SPECIES variable in the script using a text editor, then run the script

```
./src/run_blastn.sh
```
or 
```
./src/run_tblastn.sh
```
and blast outputs will go to the `blast_output` directory.
