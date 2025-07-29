#!/bin/bash
#!/bin/bash

QUERY=$(cat query.txt)
CHUNKS=$(cat relevant_chunks.txt)

RAGFile Excerpts:
$CHUNKS

Question:
$QUERY
"

echo "$PROMPT" | ollama run mistral

