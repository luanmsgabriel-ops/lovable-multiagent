# How it works

## The core insight

Lovable has an injectable skills system that nobody was fully exploring.

Skills from the Claude Code CLI (`.md` files with YAML frontmatter) are completely compatible with Lovable's native format (`.workspace/skills/`). Any agent repository from the Claude Code ecosystem can be cloned and converted to Lovable in minutes.

The gap between Claude Code CLI and Lovable visual was closed on May 24, 2026.

## How skills work in Lovable

Skills are `.md` files with a frontmatter `name` and `description`. Lovable loads them into context when the description semantically matches the current request.

The orchestrator skill triggers on any complex request and explicitly delegates to other skills by announcing:
> "Activating skill: [name] — responsibility: [what it will do]"

This creates a real multi-agent system inside Lovable.

## The install method

1. Build the archives: `./scripts/package-lovable.sh` (writes one zip per skill to `dist/lovable-zips/`)
2. Go to Settings → Skills → Import → Archive and upload each `.zip` file
3. Skills activate automatically when context matches
4. Or invoke manually with `/` in chat

## How memory works

The `memory-manager` skill reads and writes `project-memory.md` in the project root.

Every session starts by reading this file — full context of architecture, resolved bugs, established patterns, and skill metrics.

Every non-trivial task ends by updating only the affected section.

This solves the fundamental problem of any AI agent: forgetting between sessions.

## How the quality loop works

After any component or feature is built:
1. `critic` evaluates 0-10 on 4 dimensions
2. If score < 7.0: `improver` rewrites fixing all blockers
3. `bug-detector` scans for edge cases and broken integrations
4. `opportunity-scanner` identifies high-impact improvements

All autonomous. No human intervention.

## How cross-project communication works

Project A (emitter):
- Edge function `broadcast-workflow` with Zod, Postgres log, and forward to external URL

Project B (receiver):
- Public server route `/api/public/receive-workflow` with Realtime subscription
- Page that shows received items live

Project A sends → Project B receives in real time.

## How darwinian evolution works

Project B exposes endpoint `/api/public/report-metrics`.

Project A sends skill performance metrics (skill name, uses, score, last problem, trend).

Project B pipeline (these three skills are not part of this repo):
1. `meta-orchestrator` partitions: weak / exemplars / stable
2. `evolution-engine` rewrites weak skills using exemplars as genetic model
3. `fitness-reporter` generates report with before/after score

Score is capped at `exemplar - 3.0` — the system has built-in humility.
