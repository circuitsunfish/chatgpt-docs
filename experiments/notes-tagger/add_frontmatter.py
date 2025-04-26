import os

# --- Settings ---
root_folder = "PATH_TO_YOUR_NOTES_REPO"  # <-- change this to your notes folder
default_tags_by_folder = {
    "reflections": ["reflection"],
    "onboarding": ["sandbox", "onboarding"],
    "experiments": ["sandbox", "experiment"],
    "technical-notes": ["technical", "sandbox"],
    "creative-notes": ["creative", "sandbox"],
    "future-plans": ["planning", "sandbox"],
}

# --- Script ---
def add_frontmatter(filepath, tags):
    with open(filepath, "r", encoding="utf-8") as f:
        content = f.read()

    if content.lstrip().startswith("---"):
        print(f"Skipping {filepath}: already has frontmatter.")
        return  # Already has YAML frontmatter

    frontmatter = f"---\ntags: [{', '.join(tags)}]\n---\n\n"
    new_content = frontmatter + content

    with open(filepath, "w", encoding="utf-8") as f:
        f.write(new_content)

    print(f"Added frontmatter to {filepath}")

def process_folder(folder_path):
    for root, dirs, files in os.walk(folder_path):
        for file in files:
            if file.endswith(".md"):
                full_path = os.path.join(root, file)
                relative_path = os.path.relpath(full_path, root_folder)
                folder_name = relative_path.split(os.sep)[0]

                tags = default_tags_by_folder.get(folder_name, ["sandbox"])  # fallback tag
                add_frontmatter(full_path, tags)

if __name__ == "__main__":
    process_folder(root_folder)

