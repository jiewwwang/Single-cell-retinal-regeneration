# Single-cell-retinal-regeneration
10x Single-cell RNA sequencing data from the study of retinal regeneration which is published in Science 'Gene regulatory networks controlling vertebrate retinal regeneration' https://science.sciencemag.org/content/early/2020/09/30/science.abb8598.

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

The folder 'Seurat_objects' contains corresponding Seurat objects (the variable 'pbmc'). Please install R package Seurat version 2 for loading these objects (the instruction is here https://satijalab.org/seurat/install.html).
