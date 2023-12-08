# [CVPR 2023] NIPQ: Noise Proxy-Based Integrated Pseudo-Quantization [[Paper]](https://openaccess.thecvf.com/content/CVPR2023/papers/Shin_NIPQ_Noise_Proxy-Based_Integrated_Pseudo-Quantization_CVPR_2023_paper.pdf) [[Slides]](TBA) [[Video]](https://youtu.be/omfqsWVIMx8)

This is a modification of the official code for the paper [NIPQ: Noise Proxy-Based Integrated Pseudo-Quantization](https://openaccess.thecvf.com/content/CVPR2023/papers/Shin_NIPQ_Noise_Proxy-Based_Integrated_Pseudo-Quantization_CVPR_2023_paper.pdf). NIPQ samples accurate pseudo-quantization noise(PQN), while integrating learnable truncation parameter in pseudo-quantization training(PQT) pipeline. Bit-width is automatically allocated considering layer-wise sensitivity.

![](figures/overview.png)

Original repository doesn't supported the cifar-100, so this repository tried to fix.


## How to use 

1. Install [Docker](https://docs.docker.com/engine/install/).
2. Build docker image as `docker build . -t $(whoami)/nipq` will create proper docker image
3. Run `docker.sh` shall open bash for docker image.
4. Run `./run_cifar100.sh ` 
 - Optimize average bit-width: `./run.cifar100.sh avgbit`
 - Optimize bops: `./run.cifar100.sh bops`

For experimental details and hyper-paramters, please refer to the paper and `train.py` file

For imagenet training, please refer author's original code

## Citation
```BibTex  
@InProceedings{Shin_2023_CVPR,
    author    = {Shin, Juncheol and So, Junhyuk and Park, Sein and Kang, Seungyeop and Yoo, Sungjoo and Park, Eunhyeok},
    title     = {NIPQ: Noise Proxy-Based Integrated Pseudo-Quantization},
    booktitle = {Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR)},
    month     = {June},
    year      = {2023},
    pages     = {3852-3861}
}
``` 