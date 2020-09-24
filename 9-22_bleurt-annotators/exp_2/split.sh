shuf ratings.jsonl > shuf.jsonl
head -n $[ $(wc -l shuf.jsonl|cut -d" " -f1) * 80 / 100 ] shuf.jsonl > train.jsonl
tail -n +$[ ($(wc -l shuf.jsonl|cut -d" " -f1) * 80 / 100) + 1 ] shuf.jsonl > valid.jsonl
