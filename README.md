# Genomics-I-Assignment

## Databases
#### Resource centres:
* The EBI: www.ebi.ac.uk
* The NCBI: www.ncbi.nlm.nih.gov
* UCSC: genome.ucsc.edu
#### Model organism databases:
* Budding yeast: www.yeastgenome.org
* Worm: www.wormbase.org
* Fly: www.flybase.org
* Mouse: www.informatics.jax.org
* Rat: rgd.mcw.edu
* Zebrafish: zfin.org
#### Database building tool:
* www.intermine.org
#### InterMine databases:
* www.flymine.org
* intermine.modencode.org
* ratmine.mcw.edu
* yeastmine.yeastgenome.org
* www.metabolicmine.org
* www.flytf.org
* mitominer.mrc-mbu.cam.ac.uk
* targetmine.nibio.go.jp
#### Ontologies:
* Gene ontology: www.geneontology.org
* Sequence ontology: www.sequenceontology.org
#### DNA sequence/ genomes:
* Ensembl: www.ensembl.org
* Short read archive: www.ncbi.nlm.nih.gov/sra
#### Proteins:
* www.uniprot.org
* www.ebi.ac.uk/interpro
#### RNA:
* rfam.sanger.ac.uk
#### Pathways:
* www.reactome.org
* www.genome.jp/kegg/

## Links for Species

| Species         | UniProt Reference Proteome                    |
| --------------- | --------------------------------------------- | 
| D. sechelli     | https://www.uniprot.org/proteomes/UP000001292 |
| D. yakuba       | https://www.uniprot.org/proteomes/UP000002282 |
| D.pseudoobscura | https://www.uniprot.org/proteomes/UP000001819 |
| D. mojavensis   | https://www.uniprot.org/proteomes/UP000009192 |

<br>

## Useful Linux Commands
Local databases directory
```
cd /local/data/public/Genomics_1/assignments/assignment_2
```
Executables directory
```
./local/data/public/Genomics_1/programs/[BLAST,genscan,HMMer]
```
## Manuals
* Genscan: http://web.mit.edu/seven/doc/genscan/genscan.txt

## Code usage
Set SPECIES variable in batch_genscan.sh to "AAKO01", then run the following
```
mkdir AAKO01; cd AAKO01
wget ftp://ftp.ebi.ac.uk/pub/databases/ena/wgs/public/aak/AAKO01.fasta.gz
gunzip AAKO01.fasta.gz
/local/data/public/Genomics_1/programs/bin/fastasplit AAKO01.fasta . -c 100
cd ..
./batch_genscan.sh
```
