# Contributing

## Adding a new skill

1. Create `.claude/skills/<your-skill-name>/SKILL.md`
2. Use this frontmatter (English only):

```markdown
---
name: your-skill-name
description: When this activates. English only.
---
```

3. Must include: protocol, checklist, anti-patterns
4. Add it to the README table
5. Open a PR with proof it was tested in a real Lovable project

## Quality bar

- Frontmatter description in English
- Specific — must not apply to any project generically
- Tested in real Lovable project before PR
- Anti-patterns based on real bugs, not hypothetical
