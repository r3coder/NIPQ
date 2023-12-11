#!/bin/bash
# 256
# 0.04
batch='128' 
lr='0.01'
decay='1e-5'
epoch='100'

model='mobilenetv2'
dataset='cifar100'

a_scale='1'
w_scale='1'
bops_scale='3'

if [ "$1" = "bops" ]; then
    mode='bops'
    target='5.3'
elif [ "$1" = "avgbit" ]; then
    mode='avgbit'
    target='4'
else
    echo "Usage: $0 [bops|avgbit]"
    exit 1
fi

# make directory if not exist
date=`date +%Y%m%d_%H%M%S`
mkdir -p ./checkpoint/${date}
mkdir -p ./log


python -u train.py \
        --model $model --mode $mode --target $target --bops_scale ${bops_scale} --ts \
        --warmuplen 3 --ft_epoch 3 \
        --dataset $dataset --lr $lr --decay $decay  \
        --epoch $epoch --batch $batch --a_scale $a_scale --w_scale $w_scale
        # --ckpt ./checkpoint/${date}/${model}_${dataset}_${mode}_${epoch}_${a_scale}_${w_scale}_target_${target} \
        # |& tee ./log/${date}/${model}_${dataset}_${mode}_${epoch}_${a_scale}_${w_scale}_target_${target}.log