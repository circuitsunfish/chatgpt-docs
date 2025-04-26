Summary: What I've Learned Today About GPT Behavior
🔁 Canvas Behavior & Edit State
* GPT canvases are referenced by internal index, not by name.
* When a canvas is deleted, the reference to it may linger invisibly—leading future edits to target the wrong (deleted) canvas.
* App relaunches do not always clear stale references unless a new canvas is created or explicitly reopened.
* Always confirm the canvas name before editing to avoid unintentional edits to the wrong canvas.
🖼️ Canvas Display vs Canvas Content
* Canvas content is stored in Markdown-compatible format, including checkboxes, bullet points, and emojis.
* A failure to render (like blank bullets) does not mean the content is missing—it's still intact in the raw text.
* Rendering bugs are tied to the display engine, not the data itself.
💻 macOS App Behavior
* The macOS ChatGPT app uses a hybrid rendering system for canvases, likely based on webview or embedded browser tech.
* During a session, the renderer can get into a broken state—causing it to fail to display bullets, emojis, or formatting correctly.
* Quitting and relaunching the app resets the renderer and typically restores correct display behavior.
📋 Canvas History & Restoration
* GPT does not store version history of a canvas once it is deleted.
* Past canvas content can be restored only if:
    * It was quoted in the conversation, or
    * It was remembered by GPT during the same session.
* GPT cannot recover content purely from a canvas’s internal history if it’s been deleted.
🧠 Conversation Memory & Edits
* GPT's memory of your conversation is persistent and more reliable than canvas state.
* You can rely on conversation context to reconstruct tasks, agendas, or lists that were lost in canvas edits.
✅ Best Practices Learned
* Always check that the canvas name matches what you expect before editing.
* After app relaunches, issue a command like "open [canvas name]" to refresh the pointer.
* Don't assume rendering issues mean data loss—always check raw text.
* When in doubt, ask GPT to show rendered and raw versions to validate formatting.

Document created April 17, 2025 as a personal reference log of GPT canvas behavior and troubleshooting methods.

