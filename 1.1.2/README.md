# 1.1.2 Annotation using probabilistic model                                                                                                                                   
Annotate the genome using a probabilistic model e.g. genscan                                                                                                                                                                                                                                                                                                       <br>  

# To generate the input files for genscan:

1. Download genomes from links provided in links.txt
2. gunzip files and place them in `Genomics-I-Assignment/raw_sequences` folder
3. Run `fastasplit` on the genomes, specifying the flag `-c 100` to split into 100 chunks
4. For the 3 species starting with 'AA`, all files will be smaller than 2mb
5. For _Drosophila pseudoobscura_, a few fasta files will still be larger than 2mb, some > 100mb.
6. Split individual fasta files using the linux `split` command: `split -d -C 2 [large-fna-chunk-file]`. 
This splits them into 2mb chunks, numbered in digits.
However, only the first file will have the fasta header. Genscan will not accept this.
6. Run the `add_header.sh` script to add header files to the files, one batch of chunks at a time.
7. Place all the split fasta files into a folder of one of 4 names: `AAKO01`, `AAPU01`, `UCI_Dpse_MV25`, and `AAUE02`. 
These correspond to D. sechelli, D. yakuba, D. pseudoobscura, and D. mojavensis respectively.
9. Place the 4 species folders into the `genscan_input` folder.

# To run genscan:

First `cd` to `Genomics-I-Assignment/1.1.2 `

Run the following commands to generate genscan output (will appear in `genscan_output` folder). There will be no output and the jobs will run in the background but the status of the jobs can be checked with `jobs`, or killed with `kill %1`, `kill %2`, ..., `kill %4`.

## D. sechelli 
`./src/batch_genscan.sh AAKO01 &> /dev/null & `
## D. yakuba 
`./src/batch_genscan.sh AAPU01 &> /dev/null & `
## D. pseudoobscura 
`./src/batch_genscan.sh UCI_Dpse_MV25 &> /dev/null &`
## D. mojavensis 
`./src/batch_genscan.sh AAUE02 &> /dev/null &`
