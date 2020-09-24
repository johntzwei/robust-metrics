CUDA_VISIBLE_DEVICES=0 python -m bleurt.score \
  -candidate_file=outputs_30_annotators.txt \
  -reference_file=references_30_annotators.txt \
  -bleurt_checkpoint=../exp_3/wmt16_sys_annotators_checkpoint/export/bleurt_best/1600920554/ \
  -scores_file=wmt16_sys_annotators_score_30
