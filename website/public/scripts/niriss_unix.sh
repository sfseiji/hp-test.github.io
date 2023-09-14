#!/bin/bash

basepath="https://s3.amazonaws.com/grizli-v2/JwstMosaics/v5/uncover/full/abell2744clu-grizli-v5.4-"

# NIRISS-SW
ends=("-clear_drc_sci.fits.gz" "-clear_drc_wht.fits.gz" "-clear_wcs.csv")
filter=("f115wn" "f150wn" "f200wn")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        wget $basepath$filt$e 
    done
done

# NIRISS-LW
ends=("_drc_sci.fits.gz" "_drc_wht.fits.gz" "_wcs.csv")
filter=("clearp-f356w" "clearp-f444w")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        wget $basepath$filt$e 
    done
done