#!/bin/bash

# Usage: ./copy_media.sh path/to/markdownfile.md

# Check if a Markdown file was provided
if [ "$#" -lt 1 ]; then
  echo "Usage: $0 path_to_markdown_file"
  exit 1
fi

markdown_file="$1"

# Verify that the Markdown file exists
if [ ! -f "$markdown_file" ]; then
  echo "Error: Markdown file '$markdown_file' does not exist."
  exit 1
fi

# Determine the directory where the markdown file is located
md_dir=$(dirname "$markdown_file")
# The target directory is a subdirectory "media" in the markdown file's directory
target_dir="$md_dir/media"

# Define the source directory where the media files are stored
source_dir="documents/sources/media"

# Create the target directory if it doesn't exist
mkdir -p "$target_dir"

# Extract media file names from the markdown file.
# The script searches for the pattern "media/filename" in image references and strips the "media/" prefix.
media_files=$(grep -o 'media/[^)]*' "$markdown_file" | sed 's/^media\///' | sort -u)

if [ -z "$media_files" ]; then
  echo "No media file references found in '$markdown_file'."
  exit 0
fi

# Loop over each file name and copy it from the source to the target directory
for file in $media_files; do
  src_file="$source_dir/$file"
  dst_file="$target_dir/$file"
  
  if [ -f "$src_file" ]; then
    cp "$src_file" "$dst_file"
    echo "Copied '$src_file' to '$dst_file'"
  else
    echo "File not found: '$src_file'"
  fi
done
