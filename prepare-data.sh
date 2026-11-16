#!/usr/bin/env bash

# The URL to the tar file
DATAURL="https://ftp.ncbi.nlm.nih.gov/geo/series/GSE148nnn/GSE148190/suppl/GSE148190_RAW.tar"
DATAFILE="prepared-data/GSE148190.tar"

echo "- Make the directory for prepared data ..."
mkdir -p prepared-data

echo "- Download the data if needed ..."
if [ ! -e $DATAFILE ]; then
    wget -O $DATAFILE $DATAURL
fi

echo "- Extract the data ..."
tar -xvf $DATAFILE --directory=./prepared-data

echo "- Separate desired samples ..."
for sample in K409_LN K409_tumor; do
    echo "  - $sample ..."
    mkdir -p prepared-data/"$sample"
    mv prepared-data/GSM*_"${sample}"_GEX_*.gz prepared-data/"$sample"/
    mv prepared-data/GSM*_"${sample}"_VDJ_filtered_contig_annotations.csv.gz prepared-data/"$sample"/
done

echo "- Remove unnecessary files ..."
rm -rf prepared-data/*.gz

echo "- Done!"
