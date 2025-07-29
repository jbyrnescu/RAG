# find_chunks.py
import sys
import ast
import numpy as np
from sentence_transformers import SentenceTransformer

model = SentenceTransformer("all-MiniLM-L6-v2")
query = open(sys.argv[1], "r").read().strip()
query_emb = model.encode(query)

def cosine(a, b):
    return np.dot(a, b) / (np.linalg.norm(a) * np.linalg.norm(b))

chunks = []
with open(sys.argv[2], "r") as f:
    for line in f:
        chunk_id, text, emb_str = line.strip().split('\t')
        emb = np.array(ast.literal_eval(emb_str))
        score = cosine(query_emb, emb)
        chunks.append((score, text))

top_chunks = sorted(chunks, reverse=True)[:10]
for score, text in top_chunks:
    print(text)

