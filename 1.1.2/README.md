# To generate the input files for genscan:

1. Download genomes from links provided in links.txt
2. gunzip files and place them in `../raw_sequences` folder
3. Run `fastasplit` on the genomes, specifying the flag `-c 100` to split into 100 chunks
4. For the 3 species starting with 'AA`, all files will be smaller than 2mb
5. For _Drosophila pseudoobscura_, a few fasta files will still be large. Run the linux `split` command: 
`split UCI_Dpse_MV25.fna_chunk_0000096 -C 2 -d`. This splits them into 2mb chunks. 
However, only the first file will have the fasta header. Genscan will not accept this.
6. Run the `add_header.sh` script to add header files to the files, one batch at a time.
7. Place all the split fasta files into a folder of one of 4 names: `AAKO01`, `AAPU01`, `AAUE02`, and `UCI_Dpse_MV25`. 
8. Place the 4 species folders into the `genscan_input` folder.

# To run genscan:


## Run the following commands to generate genscan output (will appear in `genscan_output` folder)

```
./src/batch_genscan.sh AAKO01 &> /dev/null &
./src/batch_genscan.sh AAPU01 &> /dev/null &
./src/batch_genscan.sh UCI_Dpse_MV25 &> /dev/null &
./src/batch_genscan.sh AAUE02 &> /dev/null &
```
