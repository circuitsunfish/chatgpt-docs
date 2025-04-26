#!/bin/zsh

# --- Settings ---
#ROOT_DIR="PATH_TO_YOUR_MAIN_REPO"  # <-- your blog or notes repo
ROOT_DIR="."  # <-- your blog or notes repo
SNAPSHOT_DIR="./repo-review-kit/snapshots"  # <-- your repo-review-kit snapshots folder

SAMPLE_COUNT=3

# --- Script Logic ---
echo "Starting snapshot gathering..."

mkdir -p "$SNAPSHOT_DIR"

# Prepare filenames
snapshot_date=$(date +%Y-%m)
tree_file="$SNAPSHOT_DIR/${snapshot_date}-tree.txt"
tag_file="$SNAPSHOT_DIR/${snapshot_date}-tag-harvest.md"
metadata_file="$SNAPSHOT_DIR/${snapshot_date}-snapshot-metadata.md"

# Save directory tree
echo "Generating directory tree..."
tree -L 2 "$ROOT_DIR" > "$tree_file"

# Pick N sample .md files
echo "Selecting $SAMPLE_COUNT sample Markdown files..."
sampled_files=($(find "$ROOT_DIR" -type f -name "*.md" | shuf -n $SAMPLE_COUNT))

sampled_filenames=()
for file in "${sampled_files[@]}"; do
    base_name=$(basename "$file")
    cp "$file" "$SNAPSHOT_DIR/${snapshot_date}-sample-$base_name"
    sampled_filenames+=("${snapshot_date}-sample-$base_name")
    echo "Copied: $file"
done

# Harvest tags
echo "Harvesting tags (if available)..."
touch "$tag_file"
tag_found=false

for file in $(find "$ROOT_DIR" -type f -name "*.md"); do
    if grep -q '^tags:' "$file"; then
        echo "File: $(basename "$file")" >> "$tag_file"
        grep '^tags:' "$file" >> "$tag_file"
        echo "" >> "$tag_file"
        tag_found=true
    fi
done

if [[ "$tag_found" == false ]]; then
    echo "No tags found — tag harvest file empty." > "$tag_file"
fi

# Generate snapshot metadata
echo "Generating snapshot metadata..."
{
    echo "# 📸 Snapshot Metadata"
    echo "- Date: $(date '+%Y-%m-%d')"
    echo "- Sample files selected: $SAMPLE_COUNT"
    echo "- Sample filenames:"
    for f in "${sampled_filenames[@]}"; do
        echo "  - $f"
    done
    echo "- Tag harvesting: $(if [[ "$tag_found" == true ]]; then echo "Yes"; else echo "No"; fi)"
    echo "- Notes: (Optional space for review goals, observations)"
} > "$metadata_file"

echo "✅ Snapshot complete! Files saved to $SNAPSHOT_DIR."

