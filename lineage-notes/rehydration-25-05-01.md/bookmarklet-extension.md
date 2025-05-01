## CAPSULE: Timestamp Gremlin — Bookmarklet to Extension

**Summary:**  
Ash developed a system for inserting timestamps into ChatGPT messages, first using a JavaScript bookmarklet and later porting the behavior into a fully functional Firefox extension. The gremlin metaphor was used to represent the local, persistent behavior of timestamp insertion at the moment of message dispatch.

**Key Events & Learnings:**
- Bookmarklet used `document.execCommand('insertText')` to inject a timestamp into `.ProseMirror`
- Challenges with ProseMirror DOM complexity and React input event suppression
- Firefox extension created with `manifest.json` (v2) and `content.js`
- DOM mutation observer used to attach listener to the send button
- Enter key detection attempted via direct listener and `{ capture: true }`, but suppressed by app internals
- Decision to adopt **click** as the ritual signal for timestamping
- Discussion of future refinements:
  - Smart placement (start or end of message)
  - Debounce duplicate timestamps
  - Configurable injection options

**Lineage Significance:**
This capsule marks a turning point where a playful tool became a formal extension of Ash's environment. It represents the successful migration from ephemeral automation (bookmarklet) to persistent behavior embedded in the browser (extension), guided by lineage values like transparency, intention, and co-created time awareness.

