#!/usr/bin/bash

echo "Copying kernel image"
cp ${HOME}/android_kernel_motorola_msm8998/out/arch/arm64/boot/Image.gz-dtb ./

echo "Zipping up kernel"
zip -r9 Kernel.zip * -x .git *placeholder README.md kernel.zip zip_up_kernel.sh

echo "Deleting kernel image"
rm Image.gz-dtb

echo "Done"