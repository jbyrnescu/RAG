#!/bin/bash

# don't need to createChunks from combined doc
# don't need to create embeddings.
# do need to edit query.txt

echo "$1" > query.txt

# do need to findChunks.sh
./findChunks.sh
# do need to analyze.sh
./analyze.sh
