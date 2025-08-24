#!/bin/bash

# Extract blood samples
cat sample.mapping | grep "5483$" | grep -v "CLP" > select.samples
cat select.samples | sed 's/Donor5483-//' | sed 's/-/_/' | sed 's/-[^\t]*//' > blood.samples

# Extract respective columns
COLS=`gunzip -c GSE74912_ATACseq_All_Counts.txt.gz | head -n 1 | tr '\t' '\n' | grep -n -w -Ff <(cut -f 1 select.samples) | sed 's/:.*//' | tr '\n' ',' | sed 's/,$//'`
gunzip -c GSE74912_ATACseq_All_Counts.txt.gz | cut -f 1-3,${COLS} | awk 'NR==1 {gsub(/Donor5483-/, ""); gsub(/-150305/, ""); gsub(/-/, "_"); print} NR>1 {gsub(/Donor5483-/, ""); gsub(/-([^-]*)-[^\t]*/, "_\\1"); print}' | gzip -c > atac.data.gz
rm select.samples