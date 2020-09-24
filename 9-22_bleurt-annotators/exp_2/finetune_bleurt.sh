BERT_DIR=../bert-base

CUDA_VISIBLE_DEVICES=2 python -m bleurt.finetune \
  -init_checkpoint=${BERT_DIR}/bert-base \
  -bert_config_file=${BERT_DIR}/bert_config.json \
  -vocab_file=${BERT_DIR}/vocab.txt \
  -model_dir=wmt16_seg_checkpoint \
  -train_set=ratings.jsonl \
  -dev_set=../exp_1/valid.jsonl \
  -num_train_steps=5000
