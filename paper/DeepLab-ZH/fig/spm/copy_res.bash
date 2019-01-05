#!bin/bash

EXP_ROOT=/home/lcchen/workspace/deeplabeling/exper/voc12/res/features
IMG_ROOT=/home/lcchen/dataset/PASCAL/VOCdevkit/VOC2012/JPEGImages

MODEL1=vgg128_noup_pool3_20M_largewin3_newcode5
MODEL2=vgg128_noup_pool3_40M_largewin_spm_2
MODEL3=vgg128_noup_pool3_40M_largewin_spm_3

mkdir -p ${MODEL1}/post_none
mkdir -p ${MODEL2}/post_none
mkdir -p ${MODEL3}/post_none
mkdir img

IMGS="2010_003446 2010_003947"

for IMG in ${IMGS}
do
		cp ${EXP_ROOT}/${MODEL1}/val/fc8/post_none/results/VOC2012/Segmentation/comp6_val_cls/${IMG}.png ./${MODEL1}/post_none
    cp ${EXP_ROOT}/${MODEL2}/val/fc8/post_none/results/VOC2012/Segmentation/comp6_val_cls/${IMG}.png ./${MODEL2}/post_none
		cp ${EXP_ROOT}/${MODEL3}/val/fc8/post_none/results/VOC2012/Segmentation/comp6_val_cls/${IMG}.png ./${MODEL3}/post_none
		cp ${IMG_ROOT}/${IMG}.jpg ./img
done
