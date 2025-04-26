#!/bin/zsh

# --- Settings ---
# Directory where your repo-review-kit/ already lives
#REVIEW_KIT_DIR="PATH_TO_YOUR_REPO_REVIEW_KIT"  # <-- Change this
REVIEW_KIT_DIR="../repo-review-kit" 

# --- Script Logic ---
echo "Setting up subfolders and initial files inside $REVIEW_KIT_DIR..."

# Define subfolders
mkdir -p "$REVIEW_KIT_DIR/prompts"
mkdir -p "$REVIEW_KIT_DIR/snapshots"
mkdir -p "$REVIEW_KIT_DIR/reviews"

# Create prompts
cat <<EOF > "$REVIEW_KIT_DIR/prompts/general-review-prompt.md"
# 📚 General Repository Review Prompt

Please review the following:
- Repository tree structure
- Selected content samples
- Tag harvest (if available)

Tasks:
- Identify major topic clusters
- Suggest roadmap expansions
- Propose structural or meta improvements
- Highlight emergent opportunities

Focus on sustainable system health and thematic resonance.
EOF

cat <<EOF > "$REVIEW_KIT_DIR/prompts/roadmap-review-prompt.md"
# 🛤️ Roadmap Review Prompt

Based on the current repository state:
- Propose short-term and medium-term topic expansions.
- Suggest potential series-building opportunities.
- Identify posts that could form clusters or arcs.

Emphasize organic growth over rapid expansion.
EOF

cat <<EOF > "$REVIEW_KIT_DIR/prompts/meta-improvement-prompt.md"
# 🛠️ Meta Improvement Prompt

Review the structural and navigational health of the repository:
- Suggest improvements to folder layout, filenames, tagging (if available).
- Propose README or index enhancements.
- Recommend crosslinking strategies for long-term coherence.

Focus on strengthening the system as a living archive.
EOF

# Create placeholder snapshots
touch "$REVIEW_KIT_DIR/snapshots/README.md"
echo "# 📸 Snapshots\n\nThis folder holds repository trees, selected content samples, and tag harvests at review time." > "$REVIEW_KIT_DIR/snapshots/README.md"

# Create placeholder reviews
touch "$REVIEW_KIT_DIR/reviews/README.md"
echo "# 🧠 Reviews\n\nThis folder holds generated reviews and reflections from GPT and manual analysis." > "$REVIEW_KIT_DIR/reviews/README.md"

echo "✅ Repo Review Kit substructure initialized!"

