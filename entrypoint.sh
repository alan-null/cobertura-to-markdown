#!/bin/bash

# Fail on any error
set -e

# Check if the coverage file is provided
if [ -z "$1" ]; then
  echo "Error: No coverage file specified"
  exit 1
fi

COVERAGE_FILE="$1"
OUTPUT_FILE="${2:-output.md}"

pycobertura show --format markdown "$COVERAGE_FILE" > "$OUTPUT_FILE"

echo "Markdown generated and saved to $OUTPUT_FILE"