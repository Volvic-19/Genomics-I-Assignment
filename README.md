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
## 1.1.2 Genscan
Genscan manual:
* http://web.mit.edu/seven/doc/genscan/genscan.txt


## 1.2.2. HMMER
HMMER tutorials:
* https://bi.snu.ac.kr/Courses/bio02/HMMER_tutorial.pdf
* http://eddylab.org/software/hmmer3/3.1b2/Userguide.pdf

Navigate to where HMMER programs are installed
```
cd /local/data/public/Genomics_1/programs/hmmer-3.3/bin/bin
```
Run HMMER on each fly database
```
hmmsearch /local/data/public/Genomics_1/assignments/assignment_2/pfam_database/Pfam-A.hmm /home/tw556/Documents/Genomics_1/Assignment_2/Proteins/drosophila_mojavensis.fasta > /home/tw556/Documents/Genomics_1/Assignment_2/Proteins/mojavensis_hmmer.txt
```
```
hmmsearch /local/data/public/Genomics_1/assignments/assignment_2/pfam_database/Pfam-A.hmm /home/tw556/Documents/Genomics_1/Assignment_2/Proteins/drosophila_pseudoobscura_proteins.fasta > /home/tw556/Documents/Genomics_1/Assignment_2/Proteins/pseudoobscura_hmmer.txt
```
```
hmmsearch /local/data/public/Genomics_1/assignments/assignment_2/pfam_database/Pfam-A.hmm /home/tw556/Documents/Genomics_1/Assignment_2/Proteins/drosophila_yakuba_proteins.fasta > /home/tw556/Documents/Genomics_1/Assignment_2/Proteins/yakuba_hmmer.txt
```
```
hmmsearch /local/data/public/Genomics_1/assignments/assignment_2/pfam_database/Pfam-A.hmm /home/tw556/Documents/Genomics_1/Assignment_2/Proteins/drosophila_sechellia.fasta > /home/tw556/Documents/Genomics_1/Assignment_2/Proteins/sechellia_hmmer.txt
```
PFAM 
pfam2go.tab*
