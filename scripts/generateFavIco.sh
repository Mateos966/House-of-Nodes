#!/usr/bin/env bash
#
# Usage:
#   ./create-favicon.sh path/to/logo.svg
#
# Description:
#   This script takes an SVG file and creates a multi-size favicon.ico:
#     - 16×16, 32×32, and 48×48 versions
#     - All bundled into favicon.ico

set -e  # Exit immediately on error

if [ -z "$1" ]; then
  echo "Error: Please provide the path to an SVG file."
  echo "Usage: $0 path/to/logo.svg"
  exit 1
fi

INPUT_SVG="$1"

if [ ! -f "$INPUT_SVG" ]; then
  echo "Error: File '$INPUT_SVG' not found."
  exit 1
fi

# Create PNGs at 16×16, 32×32, 48×48
magick "$INPUT_SVG" -background none -resize 16x16 -gravity center -extent 16x16 favicon-16.png
magick "$INPUT_SVG" -background none -resize 32x32 -gravity center -extent 32x32 favicon-32.png
magick "$INPUT_SVG" -background none -resize 48x48 -gravity center -extent 48x48 favicon-48.png

# Combine into a single favicon.ico
magick favicon-16.png favicon-32.png favicon-48.png favicon.ico

echo "Favicon generated: favicon.ico"
