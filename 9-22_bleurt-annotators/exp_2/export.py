import pickle
import pandas as pd
import json
from tqdm import tqdm

wmt16_seg = pickle.load(open('../../wmt16-19-metrics-shared-task/data/pickles/wmt16-seg_level-agg.pkl', 'rb'))
df = wmt16_seg[wmt16_seg.lp.str.endswith('en')]

print(df.head(1))

fh = open('ratings.jsonl', 'wt')
for i, row in tqdm(df.iterrows(), total=len(df)):
    ex = {}
    ex['candidate'] = row['output'].strip()
    ex['reference'] = row['reference'].strip()
    ex['score'] = row['score']
    fh.write(json.dumps(ex, ensure_ascii=False) + '\n')
