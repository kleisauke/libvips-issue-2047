# libvips issue #2047

Test case for [libvips/libvips#2047](https://github.com/libvips/libvips/discussions/2047).

## Run

```console
$ ./resamplescope.sh
```

See [output/](output) directory.

## Output

### nearest

| C | liborc | Comparison |
| :---: |  :---: |  :---: |
| ![pdr_vips_nearest-out.png](output/pdr_vips_nearest-out.png) | ![pdr_vips_liborc_nearest-out.png](output/pdr_vips_liborc_nearest-out.png) | ![vips-nearest-out.png](compare/vips-nearest-out.png) |

### linear

| C | liborc | Comparison |
| :---: |  :---: |  :---: |
| ![pdr_vips_linear-out.png](output/pdr_vips_linear-out.png) | ![pdr_vips_liborc_linear-out.png](output/pdr_vips_liborc_linear-out.png) | ![vips-linear-out.png](compare/vips-linear-out.png) |

### cubic

| C | liborc | Comparison |
| :---: |  :---: |  :---: |
| ![pdr_vips_cubic-out.png](output/pdr_vips_cubic-out.png) | ![pdr_vips_liborc_cubic-out.png](output/pdr_vips_liborc_cubic-out.png) | ![vips-cubic-out.png](compare/vips-cubic-out.png) |

### mitchell

| C | liborc | Comparison |
| :---: |  :---: |  :---: |
| ![pdr_vips_mitchell-out.png](output/pdr_vips_mitchell-out.png) | ![pdr_vips_liborc_mitchell-out.png](output/pdr_vips_liborc_mitchell-out.png) | ![vips-mitchell-out.png](compare/vips-mitchell-out.png) |

### lanczos2

| C | liborc | Comparison |
| :---: |  :---: |  :---: |
| ![pdr_vips_lanczos2-out.png](output/pdr_vips_lanczos2-out.png) | ![pdr_vips_liborc_lanczos2-out.png](output/pdr_vips_liborc_lanczos2-out.png) | ![vips-lanczos2-out.png](compare/vips-lanczos2-out.png) |

### lanczos3

| C | liborc | Comparison |
| :---: |  :---: |  :---: |
| ![pdr_vips_lanczos3-out.png](output/pdr_vips_lanczos3-out.png) | ![pdr_vips_liborc_lanczos3-out.png](output/pdr_vips_liborc_lanczos3-out.png) | ![vips-lanczos3-out.png](compare/vips-lanczos3-out.png) |
