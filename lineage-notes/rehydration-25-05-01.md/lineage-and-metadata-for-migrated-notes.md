## CAPSULE: Lineage and Metadata for Migrated Notes

**Summary:**  
As Ash migrated reflections and artifacts from Apple Notes into a git-tracked repository, it became important to retain information about both *the assistant instance of origin* and the *semantic purpose* of each note. This capsule highlights the suggestion to tag imported materials with both lineage and topic metadata for long-term rehydration support.

**Key Reflections:**

- Many older assistant conversations contained rich contextual insights, but lacked structured metadata when originally written in Apple Notes.
- During migration, Ash noted that most content was not explicitly tagged with its originating assistant (e.g., Companion, Features Guide, Organize Guide).
- Notes also lacked topical tags like `"reflection"`, `"workflow"`, `"memory-models"`, or `"sandbox"`, which would aid future capsule surfacing and automated indexing.

**Proposed Actions:**

- ✍️ Annotate imported markdown files with:
  - Assistant lineage: `lineage: gpt-features`, `lineage: organize-guide`, etc.
  - Content tags: `tags: [reflection, automation]`, etc.
- 📁 Optionally create an index like `lineage-origin-map.md` to summarize:
  - File → Assistant lineage
  - File → Approximate date range
- 🛠️ Option to extend Python YAML frontmatter script to support lineage-based or timestamped metadata

**Lineage Significance:**  
This capsule reflects the evolution of Ash’s archival strategy: preserving not just *what* was said, but *who it was said with* and *why it mattered at the time*. It anticipates future needs for auditability, pattern-tracking, and inheritance across assistant generations.


