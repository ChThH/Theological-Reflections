#!/bin/bash

# Convert every PDF in current directory to Markdown using Pandoc

for file in *.pdf; do
  # Extract filename without extension
  base="${file%.pdf}"
  # Convert to Markdown
  pandoc "$file" -o "../markdown_latex/$base.md"
  echo "Converted: $file -> $base.md"
done
