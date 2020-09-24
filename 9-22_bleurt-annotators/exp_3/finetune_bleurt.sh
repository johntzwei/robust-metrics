BERT_DIR=../bert-base

CUDA_VISIBLE_DEVICES=3 python -m bleurt.finetune \
  -init_checkpoint=${BERT_DIR}/bert-base \
  -bert_config_file=${BERT_DIR}/bert_config.json \
  -vocab_file=${BERT_DIR}/vocab.txt \
  -model_dir=wmt16_sys_annotators_checkpoint \
  -train_set=train.jsonl \
  -dev_set=valid.jsonl \
  -num_train_steps=20000
