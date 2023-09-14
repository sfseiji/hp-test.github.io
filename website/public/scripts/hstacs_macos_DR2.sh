#!/bin/bash

basepath="https://s3.amazonaws.com/grizli-v2/JwstMosaics/v7/abell2744clu-grizli-v7.0-"

# HST/ACS
ends=("_drc_sci.fits.gz" "_drc_wht.fits.gz" "_wcs.csv")
filter=("f225wu" "f275wu" "f336wu" "f435w" "f475w" "f606w" "f775w" "f814w")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        curl -O $basepath$filt$e 
    done
done
