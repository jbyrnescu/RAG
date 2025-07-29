#!/bin/bash

QUERY=$(cat query.txt)
CHUNKS=$(cat relevant_chunks.txt)

PROMPT="You are an AI examining excerpts from writing.  Based on the excerpts answer the following:

RAGFile Excerpts:
$CHUNKS

Question:
$QUERY
"
echo "Prompting with the following text: $PROMPT"

echo "$PROMPT" | ollama run mistral

