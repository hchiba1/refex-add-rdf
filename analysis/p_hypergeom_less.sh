#!/bin/bash

if (($# != 4)); then
    echo "Usaga: $0 total sample1 sample2 overlap"
    exit 1
fi

total=$1
sample1=$2
sample2=$3
overlap=$4

Rscript --vanilla -e "phyper($overlap, $sample1, $total - $sample1, $sample2)" | sed -e 's/^\[1\] //'
