CUDA_VISIBLE_DEVICES=2,3 \
python -m torch.distributed.launch --nproc_per_node=2 --master_port 29529 eval.py \
    --model deeplabv3 \
    --backbone resnet18 \
    --dataset voc \
    --data /public/home/qiusm/code/noise_distill/clean/VOCAug/ \
    --save-dir predictions \
    --pretrained checkpoints/deeplabv3_resnet18_voc.pth