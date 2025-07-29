#!/bin/bash
#!/bin/bash

QUERY=$(cat query.txt)
CHUNKS=$(cat relevant_chunks.txt)

PROMPT="You are an AI analyzing journal entries. Based on the excerpts below, answer the question.

Journal Excerpts:
$CHUNKS

Question:
$QUERY
"

echo "$PROMPT" | ollama run mistral

