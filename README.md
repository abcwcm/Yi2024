![](WCM_MB_LOGO_HZSS1L_CLR_RGB.png)

# Bioinformatic methods for Yi et al.

## Single cell RNA sequencing datasets and processing
We collected publicly available single cell RNA sequence datasets from eight studies (Extended Data Fig. 1). Raw count matrices were retrieved from GEO (GSE132509, GSE111014, GSE117570, GSE111360, GSE148190, GSE146771, GSE176021, GSE139829) and cell annotations (when available) were retrieved from [TISCH](http://tisch.comp-genomics.org). TISCH datasets were uniformly processed with MAESTRO  (which included the removal of low-quality cells, cell-type annotation, and malignant cell identification). Only TISCH annotated (thus filtered) cells were retained. For datasets (GSE111360, GSE176021) lacking TISCH annotations, cells were filtered out if the number of detected genes was <500, and features were removed if they were expressed in <10 cells; cell types were then annotated with SingleR v. 1.0.6  with reference to the TISCH-annotated datasets. Cells from all datasets were combined and integrated with the fastMNN() function from batchelor v.1.10.0 using the top 2,000 most variable genes.  Dimensionality reduction was performed with runUMAP() from scater v.1.22.0 on the batch-corrected values. Size-factor normalized log-counts were obtained via computeSumFactors() from scran v1.22.1 and logNormCounts() from scater v1.22.0. UMAPs and violin plots of FAS/FASLG were visualized with scater v1.22.0 and dittoSeq v1.6.0.

## Package versions
- SingleR v1.0.6
- batchelor v.1.10.0
- scater v.1.22.0
- scran v1.22.1
- dittoSeq v1.6.0
  
## References
* **TISCH**: Dongqing Sun, Jin Wang, Ya Han, Xin Dong, Jun Ge, Rongbin Zheng, Xiaoying Shi, Binbin Wang, Ziyi Li, Pengfei Ren, Liangdong Sun, Yilv Yan, Peng Zhang, Fan Zhang, Taiwen Li, Chenfei Wang, TISCH: a comprehensive web resource enabling interactive single-cell transcriptome visualization of tumor microenvironment, Nucleic Acids Research, gkaa1020, https://doi.org/10.1093/nar/gkaa1020
* **MAESTRO**: Wang C., Sun D., Huang X., Wan C., Li Z., Han Y., Qin Q., Fan J., Qiu X., Xie Y. et al. . Integrative analyses of single-cell transcriptome and regulome using MAESTRO. Genome Biol. 2020; 21:198.
* **SingleR**: Aran D, Looney AP, Liu L, Wu E, Fong V, Hsu A, Chak S, Naikawadi RP, Wolters PJ, Abate AR, Butte AJ, Bhattacharya M (2019). “Reference-based analysis of lung single-cell sequencing reveals a transitional profibrotic macrophage.” Nat. Immunol., 20, 163-172. doi:10.1038/s41590-018-0276-y.
* **batchelor**: Haghverdi L, Lun ATL, Morgan MD, Marioni JC (2018). “Batch effects in single-cell RNA-sequencing data are corrected by matching mutual nearest neighbors.” Nat. Biotechnol., 36(5), 421–427. doi:10.1038/nbt.4091.
* **scater**: McCarthy DJ, Campbell KR, Lun ATL, Willis QF (2017). “Scater: pre-processing, quality control, normalisation and visualisation of single-cell RNA-seq data in R.” Bioinformatics, 33, 1179-1186. doi:10.1093/bioinformatics/btw777.
* **scran**: Lun ATL, McCarthy DJ, Marioni JC (2016). “A step-by-step workflow for low-level analysis of single-cell RNA-seq data with Bioconductor.” F1000Res., 5, 2122. doi:10.12688/f1000research.9501.2.
* **dittoSeq**: Bunis DG, Andrews J, Fragiadakis GK, Burt TD, Sirota M (2020). “dittoSeq: universal user-friendly single-cell and bulk RNA sequencing visualization toolkit.” Bioinformatics, 5535-5536. doi:10.1093/bioinformatics/btaa1011.
