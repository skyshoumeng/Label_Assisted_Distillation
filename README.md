#  Noised-labels Help Make a Strong Teacher: A Novel Knowledge Distillation Approach for Semantic Segmentation

This repository contains the source code for our paper [Noised-labels Help Make a Strong Teacher: A Novel Knowledge Distillation Approach for Semantic Segmentation]


## Requirement

Ubuntu 18.04 LTS

Python 3.8 ([Anaconda](https://www.anaconda.com/) is recommended)

CUDA 11.1

PyTorch 1.8.0

NCCL for CUDA 11.1

Install python packages:
```
pip install timm==0.3.2
pip install mmcv-full==1.2.7
pip install opencv-python==4.5.1.48
```

For more details, please refer to CIRKD [https://github.com/winycg/CIRKD].

Backbones pretrained on ImageNet:

|[resnet18-imagenet.pth](https://drive.google.com/file/d/1_i0n3ZePtQuh66uQIftiSwN7QAUlFb8_/view?usp=sharing) 



## Performance of Segmentation results on Pascal VOC, * denotes the model takes the noised labels as privileged information. We provided pretrained weights in checkpoints folder.


The Pascal VOC dataset for segmentation is available at [Baidu Drive](https://pan.baidu.com/s/1MX2ea7rNRqbDqOKQ8E6XpQ?pwd=d2fp )


| Teacher | Student | Method | Val mIoU|
| -- | -- | -- |-- |
| DeepLabV3-ResNet101| DeepLabV3-ResNet18|Baseline| 73.21 | 
| DeepLabV3-ResNet101| DeepLabV3-ResNet18|CIRKD| 74.50 |
| DeepLabV3-ResNet101| PSPNet-ResNet18|Baseline|73.33|
| DeepLabV3-ResNet101| PSPNet-ResNet18|CIRKD|74.78 |
| DeepLabV3-ResNet101| DeepLabV3-ResNet18* |Ours| 75.0 |
| DeepLabV3-ResNet101| PSPNet-ResNet18* |Ours|75.4 |


Our code borrows heavily from CIRKD[https://github.com/winycg/CIRKD], we thank the great opensource project CIRKD.

