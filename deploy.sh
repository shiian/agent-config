#!/bin/bash
# Synchronize agent rules to project directories
TARGETS=("youtube_transcriber" "learning-log" "hello_world_scripts")
SOURCE_DIR=$(dirname "$0")

for target in "${TARGETS[@]}"; do
  if [ -d "../$target" ]; then
    echo "Syncing to $target..."
    cp "$SOURCE_DIR/GEMINI.md" "../$target/"
    mkdir -p "../$target/docs"
    cp -r "$SOURCE_DIR/docs/"* "../$target/docs/"
  else
    echo "Directory $target not found, skipping."
  fi
done
