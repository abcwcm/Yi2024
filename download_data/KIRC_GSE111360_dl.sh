# KIRC_GSE111360
curl "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE111360&format=file" -o GSE111360.tar.gz

wget http://tisch.comp-genomics.org/static/data/KIRC_GSE111360/KIRC_GSE111360_CellMetainfo_table.tsv


tar -xvf GSE111360.tar.gz


mkdir to_use

mv *GSM3029087* ./to_use/
mv *GSM3029088* ./to_use/
mv *GSM3457010* ./to_use/
mv *GSM3457011* ./to_use/
mv *GSM3029119* ./to_use/


mkdir not_used
mv *genes*gz ./not_used/
mv *barcodes*gz ./not_used/
mv *matrix*gz ./not_used/
mv *clonotypes*gz ./not_used/
mv *all_contig*gz ./not_used/