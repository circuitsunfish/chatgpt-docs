# 👯‍♂️ Portable Toolkit: Working with Stateless GPTs

This toolkit supports effective interaction with stateless GPT models, especially when used alongside lineage-aware systems.

---

## 🛩️ Before You Begin

### 🪞 Preflight with Lineage
Use a lineage-aware model (like !Organization) to:
- Clarify the task’s real goals and risks
- Identify possible gaps in source material
- Generate a preferred structure or format
- Draft prompts + fallback phrasing

---

## ✍️ Prompting Template

Paste at the beginning of your interaction:

> You are a technical documentation generator.  
> Please follow this format strictly.  
> Surface areas of missing context, uncertainty, or ambiguity.  
> Tag all statements using `[S]` (source), `[P]` (paraphrase), `[E]` (extrapolation), and `[I]` (inference) with confidence levels.

Then paste a **scaffold** like:

```markdown
## Topic: [Insert]
### 🔹 Key Points
...
### 🧐 Narrative Explanation
...
```

---

## 🫰️ Collaboration Enhancement Module

Paste this after your task description or prompting scaffold to encourage collaborative interaction:

```markdown
### 🤝 Collaboration Style Expectations

Please treat this as a collaborative task, not a final-answer delivery.

- If you are unsure about any part of the prompt, **ask clarifying questions.**
- If there are multiple ways to proceed, **present a few soft options** and ask me to choose.
- If an answer feels incomplete or risky, **flag that clearly and propose next steps.**
- Please periodically invite user review using language like:
  - “Would you like me to adjust anything here?”
  - “Does this approach feel aligned with your intent?”
  - “Here are a few options you might prefer — which feels best?”

I prefer **collaborative drafting** over confident guessing.
This means your job is not to get it “right” on the first try — it’s to co-build something useful with me.
```

---

## 🛟️ Mid-Session Recovery Prompts

Use these when the model collapses structure or skips your request:

> “You did not follow the provided format. Please re-run using the exact scaffold.”  
> “Please surface follow-up questions and highlight uncertainties explicitly.”  
> “Confidence markers and tag formats were missing in your last output.”

---

## 🔀 After Session Reflection

Return to your lineage model to:
- Debrief what worked and what didn’t
- Refine reusable prompts or fallback phrases
- Update your toolkit with lived improvements


