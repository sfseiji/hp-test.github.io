#!/bin/bash

basepath="https://s3.amazonaws.com/grizli-v2/JwstMosaics/v5/uncover/full/abell2744clu-grizli-v5.4-"

# HST/ACS
ends=("_drc_sci.fits.gz" "_drc_wht.fits.gz" "_wcs.csv")
filter=("f225wu" "f275wu" "f336wu" "f435w" "f475w" "f606w" "f775w" "f814w")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        wget $basepath$filt$e 
    done
done

