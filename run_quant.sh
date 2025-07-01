#!/bin/bash
#
#SBATCH --job-name=sgnex-quant
#SBATCH --time=720
#SBATCH --mem=10000
#SBATCH --ntasks=32
#SBATCH --mail-user=milove@email.unc.edu
#SBATCH --mail-type=ALL


./oarfish/target/release/oarfish --only-index --annotated gencode.v48.transcripts.fa.gz --novel novel.fa.gz --seq-tech ont-cdna --threads 32 --index-out gencode_plus_novel

./oarfish/target/release/oarfish --reads reads/SGNex_H9_cDNA_replicate2_run4.fastq.gz --index gencode_plus_novel --output quants/sgnex_h9_rep2 --seq-tech ont-cdna --filter-group no-filters --threads 32

./oarfish/target/release/oarfish --reads reads/SGNex_H9_cDNA_replicate3_run4.fastq.gz --index gencode_plus_novel --output quants/sgnex_h9_rep3 --seq-tech ont-cdna --filter-group no-filters --threads 32

./oarfish/target/release/oarfish --reads reads/SGNex_H9_cDNA_replicate4_run4.fastq.gz --index gencode_plus_novel --output quants/sgnex_h9_rep4 --seq-tech ont-cdna --filter-group no-filters --threads 32
