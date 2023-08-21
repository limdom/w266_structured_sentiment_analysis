CUDA_VISIBLE_DEVICES=0 python ./src/GTS/train_GTS.py --dataset "opener_en" --plm_model_name "ernie_2.0_skep_large_en_pytorch" --seed 1 --batch_size 8 --nhops 3 --learning_rate 3e-5 --docker_mode True --disable_progress_bar True

CUDA_VISIBLE_DEVICES=0 python ./src/GTS/ensemble_GTS.py --dataset "opener_en" --batch_size 8 --ensemble_plm_model_names "ernie_2.0_skep_large_en_pytorch" "bert-large-uncased"

CUDA_VISIBLE_DEVICES=$1 python ./src/GTS/train_GTS.py --dataset "opener_en" --plm_model_name "bert-large-uncased" --seed 1 --batch_size 8 --nhops 3 --learning_rate 3e-5 --docker_mode True --disable_progress_bar True