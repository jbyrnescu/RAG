# embed.py
import sys
from sentence_transformers import SentenceTransformer

model = SentenceTransformer("all-MiniLM-L6-v2")

with open(sys.argv[1], "r") as f:
    for i, line in enumerate(f):
        chunk = line.strip()
        emb = model.encode(chunk).tolist()
        print(f"{i}\t{chunk}\t{emb}")

