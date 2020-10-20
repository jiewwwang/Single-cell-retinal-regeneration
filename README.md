# Single-cell-retinal-regeneration
10x Single-cell RNA sequencing data from the study of retinal regeneration which is published in Science 'Gene regulatory networks controlling vertebrate retinal regeneration' https://science.sciencemag.org/content/early/2020/09/30/science.abb8598.

Raw data are available in http://bioinfo.wilmer.jhu.edu/jiewang/scRNAseq/.
The folder 'Bam_files' contains raw sequencing data in bam format.

The folder 'Count_matrix' contains the matrix of raw counts (in .mtx format):
Mouse_NMDA_count_matrix.mtx (Mouse NMDA treatment),
Mouse_LD_count_matrix.mtx (Mouse light damage treatment),
Zebrafish_NMDA_count_matrix.mtx (Zebrafish NMDA treatment),
Zebrafish_LD_count_matrix.mtx (Zebrafish light damage),
Zebrafish_TNFa_count_matrix.mtx (Zebrafish T+R treatment),
Chick_NMDAandGF_count_matrix.mtx (Chick NMDA or growth factor treatment).

The folder 'Seurat_objects' contains corresponding Seurat objects (the variable 'pbmc'). Please install Seurat version 2 following https://satijalab.org/seurat/install.html.


The files 'Zebrafish_gene_features.tsv', 'Mouse_gene_features.tsv' and 'Chick_gene_features.tsv' separately contain the features of genes in zebrafish, mouse and chick. 

The files 'Zebrafish_NMDA_cell_features.tsv', 'Zebrafish_LD_cell_features.tsv' and 'Zebrafish_TNFa_cell_features.tsv' contain the features of cells in zebrafish from NMDA treatment, light damage and T+R treatment, respectively. 

The file 'Chick_NMDAandGF_cell_features.tsv' contain the features of cells in chick NMDA or growth factor treatment. 
