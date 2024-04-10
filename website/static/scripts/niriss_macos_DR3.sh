#!/bin/bash

basepath="https://s3.amazonaws.com/grizli-v2/JwstMosaics/v7/abell2744clu-grizli-v7.2-"

# NIRISS-SW
ends=("-clear_drc_sci.fits.gz" "-clear_drc_wht.fits.gz" "-clear_wcs.csv")
filter=("f090wn" "f115wn" "f140mn" "f150wn" "f158mn" "f200wn")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        curl -O $basepath$filt$e 
    done
done

# NIRISS-LW
ends=("_drc_sci.fits.gz" "_drc_wht.fits.gz" "_wcs.csv")
filter=("clearp-f277w" "clearp-f356w" "clearp-f430m" "clearp-f444w" "clearp-f480m")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        curl -O $basepath$filt$e 
    done
done