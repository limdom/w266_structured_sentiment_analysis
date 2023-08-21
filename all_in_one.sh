pip install transformers
pip install datasets==1.16.1
pip install accelerate==0.18.0

cd pretrained_models
# wget -O "ernie_2.0_skep_large_en.tar.gz" --no-check-certificate https://senta.bj.bcebos.com/skep/ernie_2.0_skep_large_en.tar.gz
# tar -xzvf ernie_2.0_skep_large_en.tar.gz
# rm ernie_2.0_skep_large_en.tar.gz
cd ..
pip install paddlepaddle==1.8.5
bash ./scripts/convert_paddle_model_to_pytorch.sh
cd pretrained_models
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs

# cd ~/w266_semeval2022_task10_GTS/src/GTS/saved_models/classify/LaBSE/opener_es
# tar -xzvf LaBSE.tar.gz
# rm opener_en.tar.gz

# cd ~/w266_semeval2022_task10_GTS/src/GTS/saved_models/classify/bert-large-uncased/opener_en
# tar -xzvf opener_en.tar.gz
# rm opener_en.tar.gz

cd ~/w266_semeval2022_task10_GTS/pretrained_models
git lfs install

git clone https://huggingface.co/xlm-roberta-large/ # OpenNER(ES) co-extraction
# git clone https://huggingface.co/sentence-transformers/LaBSE # OpenNER(ES) valdiation
git clone https://huggingface.co/bert-large-uncased/ # OpenNER(EN) co-extraction, validation
git clone https://huggingface.co/activebus/BERT_Review # DL OpenNER(EN) co-extraction alternative
git clone https://huggingface.co/PlanTL-GOB-ES/roberta-large-bne # DL OpenNER(ES) co-extraction alternative

git clone https://huggingface.co/roberta-large/ # DL OpenNER (EN) co-extraction alternative
git clone https://huggingface.co/sentence-transformers/all-roberta-large-v1 # DL OpenNER (EN) co-extraction alternative
git clone https://huggingface.co/distilbert-base-multilingual-cased # DL OpenNER(ES) co-extraction alternative
git clone https://huggingface.co/bert-base-multilingual-uncased # DL OpenNER(ES) co-extraction alternative
# git clone https://huggingface.co/deepset/roberta-large-squad2/
# git clone https://huggingface.co/deepset/xlm-roberta-large-squad2/
# git clone https://huggingface.co/NbAiLab/nb-bert-base/
# git clone https://huggingface.co/bert-base-multilingual-cased/
git lfs pull
