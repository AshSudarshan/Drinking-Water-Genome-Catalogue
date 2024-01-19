#!/bin/bash

#SBATCH -J FastP                
#SBATCH -A # Enter account ID          
#SBATCH -N 1 --ntasks-per-node=8      
#SBATCH --mem-per-cpu=4G             
#SBATCH -t 03:00:00                       
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user= # Enter Email
#SBATCH -o FastP.out                


mkdir ${SAMPLE}_QC_logs

fastp --in1 ${SAMPLE}.R1.fastq.gz --in2 ${SAMPLE}.R2.fastq.gz --thread 8 --trim_poly_g --trim_poly_x --qualified_quality_phred 20 --length_required 20 --out1 ${SAMPLE}.R1.trimmed.fastq.gz --out2 ${SAMPLE}.R2.trimmed.fastq.gz --unpaired1 ${SAMPLE}.R1.unpaired.fastq.gz --unpaired2 ${SAMPLE}.R2.unpaired.fastq.gz -h ${SAMPLE}_QC_logs/${SRR}.html

