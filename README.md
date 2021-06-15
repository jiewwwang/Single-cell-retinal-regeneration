# Single-cell retinal regeneration
10x Single-cell RNA sequencing (scRNA-seq) data from the study of retinal regeneration which is published in Science 'Gene regulatory networks controlling vertebrate retinal regeneration' https://science.sciencemag.org/content/370/6519/eabb8598.

## Sample information
The table 'Sample_information_for_scRNAseq.xlsx' contains treatment and sample information for scRNAseq.
Please check this table for the control (or undamaged) samples which are included in scRNA-seq data from each treatment. 

## Features of genes
The files 'Zebrafish_gene_features.tsv', 'Mouse_gene_features.tsv' and 'Chick_gene_features.tsv' separately contain the features of genes in zebrafish, mouse and chick. 

The file 'Zebrafish_development_gene_features.tsv' contains the features of genes which are specifically used for zebrafish retinal development.

## Features of cells
The files 'Zebrafish_NMDA_cell_features.tsv', 'Zebrafish_LD_cell_features.tsv', 'Zebrafish_TNFa_cell_features.tsv' and 'Zebrafish_development_cell_features.tsv' contain the features of cells in zebrafish from NMDA treatment, light damage, T+R treatment and retinal development, respectively. 

The files 'Mouse_NMDA_cell_features.tsv' and 'Mouse_LD_cell_features.tsv' contain the features of genes and cells in mouse from NMDA treatment and light damage, respectively.

The file 'Chick_NMDAandGF_cell_features.tsv' contains the features of cells in chick NMDA or growth factor treatment. 

## Raw data are available in http://bioinfo.wilmer.jhu.edu/jiewang/scRNAseq/

The folder 'Bam_files' contains raw sequencing data in bam format.

The folder 'Count_matrix' contains the matrix of raw counts in mtx format.

The folder 'Seurat_objects' contains corresponding Seurat objects (the variable 'pbmc'). Please install R package Seurat version 2.3.0 for loading these objects (the instruction is here https://satijalab.org/seurat/install.html).


## Integrated Regulatory Network Analysis (IReNA)
The first version of R package IReNA is named GReNA (General Regulatory Network Analysis) and accessible in https://github.com/jiang-junyao/GReNA. GReNA only uses expression profiles (e.g., scRNA-seq data) to reconstruct regulatory networks. Later, we will update the version of IReNA which could perform regulatory network analysis through integrating scRNA-seq with ATAC-seq. 


