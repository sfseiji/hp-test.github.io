#!/bin/bash

basepath="https://s3.amazonaws.com/grizli-v2/JwstMosaics/v7/abell2744clu-grizli-v7.0-"

# HST/WFC3
ends=("_drz_sci.fits.gz" "_drz_wht.fits.gz" "_wcs.csv")
filter=("f105w" "f125w" "f140w" "f160w")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        wget $basepath$filt$e 
    done
done
