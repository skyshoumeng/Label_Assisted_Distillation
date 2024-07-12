CUDA_VISIBLE_DEVICES=2,3 \
    python -m torch.distributed.launch --nproc_per_node=2 --master_port 29517 train_baseline.py \
    --model deeplabv3 \
    --backbone resnet18 \
    --dataset voc \
    --crop-size 512 512 \
    --data /public/home/qiusm/code/noise_distill/clean/VOCAug/ \
    --save-dir checkpoints \
    --log-dir logs \
    --pretrained-base pretrained/resnet18-imagenet.pth \
    --resume checkpoints_tea/deeplabv3_resnet18_voc.pth
