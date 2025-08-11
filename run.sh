GPU_ID=$1
MODEL_PATH=$2 # results/ours_test
SOURCE_PATH=$3 # ../datasets/sony_ai/20250529/valid/classroom2/talking

CUDA_VISIBLE_DEVICES=$GPU_ID python train.py \
    --config configs/ours.json \
    --model_path $MODEL_PATH \
    --source_path $SOURCE_PATH \
    --start_timestamp 0

CUDA_VISIBLE_DEVICES=$GPU_ID python render.py \
    --model_path $MODEL_PATH \
    --source_path $SOURCE_PATH \
    --iteration 40000 \
    --save_img \
    --skip_train
