#!/bin/bash
source /Users/jbyrne/Dropbox/eclipse-workspace/journalTalk/venv/bin/activate
python3 find_chunks.py query.txt embeddings.tsv > relevant_chunks.txt

