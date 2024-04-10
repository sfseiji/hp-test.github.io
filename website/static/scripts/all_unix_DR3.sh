#!/bin/bash

basepath="https://s3.amazonaws.com/grizli-v2/JwstMosaics/v7/abell2744clu-grizli-v7.2-"

# NIRCAM
ends=("_drc_sci.fits.gz" "_drc_wht.fits.gz" "_wcs.csv")
filter=("f150w2-f162m")
for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        wget $basepath$filt$e 
    done
done

ends=("-clear_drc_sci.fits.gz" "-clear_drc_wht.fits.gz" "-clear_wcs.csv")
filter=("f070w" "f090w" "f115w" "f140m" "f150w" "f182m" "f200w" "f210m" "f250m" "f277w" "f300m" "f335m" "f356w" "f360m" "f410m" "f430m" "f444w" "f460m" "f480m")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        wget $basepath$filt$e 
    done
done

# NIRISS-SW
ends=("-clear_drc_sci.fits.gz" "-clear_drc_wht.fits.gz" "-clear_wcs.csv")
filter=("f090wn" "f115wn" "f140mn" "f150wn" "f158mn" "f200wn")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        wget $basepath$filt$e 
    done
done

# NIRISS-LW
ends=("_drc_sci.fits.gz" "_drc_wht.fits.gz" "_wcs.csv")
filter=("clearp-f277w" "clearp-f356w" "clearp-f430m" "clearp-f444w" "clearp-f480m")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        wget $basepath$filt$e 
    done
done

# HST/ACS
basepath="https://s3.amazonaws.com/grizli-v2/JwstMosaics/v7/abell2744clu-grizli-v7.1-"
ends=("_drc_sci.fits.gz" "_drc_wht.fits.gz" "_wcs.csv")
filter=("f225wu" "f275wu" "f336wu" "f435w" "f475w" "f606w" "f775w" "f814w")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        wget $basepath$filt$e 
    done
done


# HST/WFC3
basepath="https://s3.amazonaws.com/grizli-v2/JwstMosaics/v7/abell2744clu-grizli-v7.0-"
ends=("_drz_sci.fits.gz" "_drz_wht.fits.gz" "_wcs.csv")
filter=("f105w" "f125w" "f140w" "f160w")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        wget $basepath$filt$e 
    done
done
