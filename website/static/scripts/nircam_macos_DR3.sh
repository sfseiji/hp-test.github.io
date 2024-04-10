#!/bin/bash

basepath="https://s3.amazonaws.com/grizli-v2/JwstMosaics/v7/abell2744clu-grizli-v7.2-"

# NIRCAM
ends=("_drc_sci.fits.gz" "_drc_wht.fits.gz" "_wcs.csv")
filter=("f150w2-f162m")
for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        curl -O $basepath$filt$e 
    done
done

ends=("-clear_drc_sci.fits.gz" "-clear_drc_wht.fits.gz" "-clear_wcs.csv")
filter=("f070w" "f090w" "f115w" "f140m" "f150w" "f182m" "f200w" "f210m" "f250m" "f277w" "f300m" "f335m" "f356w" "f360m" "f410m" "f430m" "f444w" "f460m" "f480m")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        curl -O $basepath$filt$e 
    done
done