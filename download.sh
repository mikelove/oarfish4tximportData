#!/bin/bash
#
#SBATCH --job-name=sgnex-dl
#SBATCH --time=1440
#SBATCH --mem=1000
#SBATCH --ntasks=1
#SBATCH --mail-user=milove@email.unc.edu
#SBATCH --mail-type=ALL

module load aws

aws s3 cp --no-sign-request s3://sg-nex-data/data/sequencing_data_ont/fastq/SGNex_H9_cDNA_replicate2_run4/SGNex_H9_cDNA_replicate2_run4.fastq.gz .

aws s3 cp --no-sign-request s3://sg-nex-data/data/sequencing_data_ont/fastq/SGNex_H9_cDNA_replicate3_run4/SGNex_H9_cDNA_replicate3_run4.fastq.gz .

aws s3 cp --no-sign-request s3://sg-nex-data/data/sequencing_data_ont/fastq/SGNex_H9_cDNA_replicate4_run4/SGNex_H9_cDNA_replicate4_run4.fastq.gz .
