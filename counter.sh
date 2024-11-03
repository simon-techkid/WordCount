#!/bin/bash

# Check if the file path argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <file_path>"
  exit 1
fi

# Check if the file exists
if [ ! -f "$1" ]; then
  echo "File not found!"
  exit 1
fi

# Count words excluding double spaces
word_count=$(tr -s ' ' '\n' < "$1" | grep -v '^$' | wc -l)

echo "Word count: $word_count"
