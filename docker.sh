

local_code_loc=.
container_code_loc=/workspace/nipq

# docker run --memory=20g -v ${local_code_loc}:${container_code_loc} -v ${local_dataset_loc}:${container_dataset_loc} -it --gpus=all --ipc=host pytorch/pytorch:1.12.1-cuda11.3-cudnn8-devel 
# local_dataset_loc=./dataset
# container_dataset_loc=/workspace/dataset



# Edit if you want to use a specific GPU
# '"device=0"' for gpu #0
# all for all gpus, etc...

docker run --memory=20g -v ${local_code_loc}:${container_code_loc} --gpus='"device=0"' -it --ipc=host $(whoami)/nipq:latest