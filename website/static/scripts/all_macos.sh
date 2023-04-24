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

# NIRISS-SW
ends=("-clear_drc_sci.fits.gz" "-clear_drc_wht.fits.gz" "-clear_wcs.csv")
filter=("f115wn" "f150wn" "f200wn")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        curl -O $basepath$filt$e 
    done
done

# NIRISS-LW
ends=("_drc_sci.fits.gz" "_drc_wht.fits.gz" "_wcs.csv")
filter=("clearp-f356w" "clearp-f444w")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        curl -O $basepath$filt$e 
    done
done

# HST/ACS
ends=("_drc_sci.fits.gz" "_drc_wht.fits.gz" "_wcs.csv")
filter=("f225wu" "f275wu" "f336wu" "f435w" "f475w" "f606w" "f775w" "f814w")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        curl -O $basepath$filt$e 
    done
done

# HST/WFC3
ends=("_drz_sci.fits.gz" "_drz_wht.fits.gz" "_wcs.csv")
filter=("f105w" "f125w" "f140w" "f160w")

for filt in ${filter[@]}; do
    for e in ${ends[@]}; do 
        curl -O $basepath$filt$e 
    done
done
