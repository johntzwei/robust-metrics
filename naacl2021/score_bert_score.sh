CUDA_VISIBLE_DEVICES=3 bert-score \
    -r references.txt \
    -c outputs.txt \
    -s \
    --lang en > score_bert-score
