BERT_DIR=../../bert-base

CUDA_VISIBLE_DEVICES=1 python -m bleurt.finetune \
  -init_checkpoint=${BERT_DIR}/bert-base \
  -bert_config_file=${BERT_DIR}/bert_config.json \
  -vocab_file=${BERT_DIR}/vocab.txt \
  -model_dir=wmt16_sys_norm_checkpoint \
  -train_set=train_54k.jsonl \
  -dev_set=valid.jsonl \
  -num_train_steps=10000
