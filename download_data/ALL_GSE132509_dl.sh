# ALL_GSE132509
curl "https://www.ncbi.nlm.nih.gov/geo/download/?acc=GSE132509&format=file" -o GSE132509.tar.gz

wget https://ftp.ncbi.nlm.nih.gov/geo/series/GSE132nnn/GSE132509/suppl/GSE132509%5Fcell%5Fannotations%2Etsv%2Egz

wget http://tisch.comp-genomics.org/static/data/ALL_GSE132509/ALL_GSE132509_CellMetainfo_table.tsv


tar -xvf GSE132509.tar.gz
gunzip GSE132509_cell_annotations.tsv.gz


mkdir to_use

mv *GSM3872434* ./to_use/
mv *GSM3872435* ./to_use/
mv *GSM3872436* ./to_use/
mv *GSM3872437* ./to_use/
mv *GSM3872438* ./to_use/
mv *GSM3872439* ./to_use/
mv *GSM3872442* ./to_use/
mv *GSM3872443* ./to_use/
mv *GSM3872444* ./to_use/

mkdir not_used
mv *GSM3872441* ./not_used/
mv *GSM3872440* ./not_used/