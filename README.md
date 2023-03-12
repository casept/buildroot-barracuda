# Building

Clone buildroot into some other directory on your machine. Some patches have to be applied to buildroot's packages
which can't be applied from an external buildroot tree. They're located under `patches/`. Aplly them manually.

To perform the build, run:
```shell
make BR2_EXTERNAL=/path/to/this/repo barracuda_defconfig
```
