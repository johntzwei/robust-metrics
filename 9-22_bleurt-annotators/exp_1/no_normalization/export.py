import pickle
import pandas as pd
import json
from tqdm import tqdm

wmt16_sys = pickle.load(open('../wmt16_sys_metadata.pkl', 'rb'))
df = wmt16_sys[wmt16_sys.lp.str.endswith('en')]

fh = open('ratings.jsonl', 'wt')
for i, row in tqdm(df.iterrows(), total=len(df)):
    ex = {}
    ex['candidate'] = row['output'].strip()
    ex['reference'] = row['reference'].strip()
    ex['score'] = row['score']
    fh.write(json.dumps(ex, ensure_ascii=False) + '\n')
