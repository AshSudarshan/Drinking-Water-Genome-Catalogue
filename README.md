# Drinking Water Database Code

This repository contains the code used to build the Drinking Water genome database in order to ensure reproducibility and for other to use this protocol for their individual projects. 

Drinking water metagenome datasets and isolates from various studies were processed to obtain the final MAGs for this analysis. The metagenomics workflow is based on Dot's thesis. A brief description of the pipeline is given below:-

The adapter trimming and filtering of reads based on quality are done using Fastp followed by the removal of vector sequences with the help of the Univec core database on NCBI.
