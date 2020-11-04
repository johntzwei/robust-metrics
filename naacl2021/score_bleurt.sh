CUDA_VISIBLE_DEVICES=3 python -m bleurt.score \
  -candidate_file=outputs.txt \
  -reference_file=references.txt \
  -bleurt_checkpoint=./bleurt-base-128/ \
  -scores_file=bleurt-base-128_scores
