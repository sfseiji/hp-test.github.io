#!/bin/bash

basepath="https://s3.amazonaws.com/grizli-v2/JwstMosaics/v5/uncover/full/abell2744clu-grizli-v5.4-"

# NIRCAM
ends=("-clear_drc_sci.fits.gz" "-clear_drc_wht.fits.gz" "-clear_wcs.csv")
filter=("f090w" "f115w" "f150w" "f200w" "f277w" "f356w" "f410m" "f444w")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        curl -O $basepath$filt$e 
    done
done