#!/usr/bin/env bash

if [ -d "$PWD/resamplescope" ]; then
  echo "Skip cloning, ResampleScope already exists at $PWD/resamplescope"
  cd $PWD/resamplescope
else
  git clone https://github.com/jsummers/resamplescope.git
  cd resamplescope && make
  ./rscope -gen -r
fi

vips_kernels=(nearest linear cubic mitchell lanczos2 lanczos3)
for kernel in "${vips_kernels[@]}"; do
  vips reducev pdr.png pdr_vips_$kernel.png 1.003603604 --kernel $kernel --vips-novector
  vips reducev pdr.png pdr_vips_liborc_$kernel.png 1.003603604 --kernel $kernel
  ./rscope -name "$kernel reducev" -nologo -r \
    pdr_vips_$kernel.png ../output/pdr_vips_$kernel-out.png
  ./rscope -name "$kernel reducev (liborc)" -nologo -r \
    pdr_vips_liborc_$kernel.png ../output/pdr_vips_liborc_$kernel-out.png
  ./rscope -name "$kernel reducev" -name2 "$kernel reducev (liborc)" -nologo -r \
    pdr_vips_$kernel.png pdr_vips_liborc_$kernel.png ../compare/vips-$kernel-out.png
done
