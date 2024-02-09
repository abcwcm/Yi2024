# SKCM_GSE148190
curl "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE148190&format=file" -o GSE148190.tar.gz

wget  http://tisch.comp-genomics.org/static/data/SKCM_GSE148190/SKCM_GSE148190_CellMetainfo_table.tsv

tar -xvf GSE148190.tar.gz


mkdir to_use

mv *GSM4455932* ./to_use/
mv *GSM4455933* ./to_use/

mkdir not_used
mv *genes*gz ./not_used/
mv *barcodes*gz ./not_used/
mv *matrix*gz ./not_used/
mv *clonotypes*gz ./not_used/
mv *filtered_contig*gz ./not_used/