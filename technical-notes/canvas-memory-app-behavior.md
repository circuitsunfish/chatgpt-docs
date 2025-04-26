
GPT Learning Summary – Canvas, Memory, and App Behavior

📅 Logged after April 16, 2025 session

⸻

🧠 GPT Features & Architecture

Canvas vs GPT Memory

Feature	Canvas	GPT Memory
Purpose	Workspace for editing or writing	Stores long-term facts/preferences
Persistence	Per thread (can be opened/closed)	Cross-thread, persistent over time
Editable by user	Yes	No (requests only)
Risks	Pointer can be lost during session glitches	Memory is safe but doesn’t store canvas data

Important: Canvases must be exported or reopened to preserve content. GPT memory does not retain the full text of canvases or chats.

⸻

🧷 Editor Pointer Behavior
	•	Each thread can point to one active canvas.
	•	If detached (e.g., after restart or switching devices), edit commands fail silently.
	•	Clicking a past canvas preview in the chat history reattaches the pointer and reopens the canvas.

⸻

🧩 Static Previews vs Editable Canvases
	•	Canvas previews in the side pane may appear as static, but:
	•	They still contain selectable text.
	•	Clicking them can promote them back to an editable state.

⸻

📱 Session & Device Metadata

Current usage: Native macOS app
Previously reported: Android app (Galaxy S23 Ultra)

Implications:
	•	Simultaneous sessions (Mac + Android) may cause pointer desync.
	•	Android app restarts or background activity often drop canvas connections.
	•	Can result in “lost” canvases or unlinked edits unless recovered manually.

⸻

🔐 Best Practices for Stable Use

Problem	Recommendation
Canvas pointer desync	Use one device per thread session where possible
Canvas edits lost	Export canvases regularly before closing or discarding
Not sure if canvas is active	Ask: “What is the editor pointer targeting?”
Recovering previews	Scroll up and click canvas previews to reactivate
Managing sensitive data	Avoid relying on GPT memory alone



⸻

✅ Conclusions
	•	Canvas memory is not the same as GPT memory.
	•	Clicking a canvas preview restores it to editable state if previously detached.
	•	Switching apps or devices rapidly (especially on Android) risks pointer desync.
	•	Exporting your canvas work regularly is safest practice.

⸻

Let me know if you’d like this saved as a .txt, .md, or .rtf file, or synced with another canvas or system.
