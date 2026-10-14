# Lovable Multi-Agent System

> A multi-agent system for Lovable and Claude Code. 22 specialized skills — orchestrator, memory, critic, improver and more. Send a briefing, get a complete product.

All skills live in `.claude/skills/<name>/SKILL.md`, the single source of truth.

## Quick start

### Claude Code
Clone this repo and open it with Claude Code. Skills in `.claude/skills/` load automatically.

### Lovable
Build the import archives:

```bash
./scripts/package-lovable.sh   # one zip per skill in dist/lovable-zips/
```

Then upload each zip via **Settings → Skills → Import → Archive**. Start with:
1. `orchestrator.zip`
2. `memory-manager.zip`
3. `critic.zip`
4. `improver.zip`
5. `frontend-developer.zip`

Then send any complex request. The orchestrator analyzes, delegates to specialists, passes through critic, and corrects automatically. For a full autonomous build, see [BRIEFING-TEMPLATE.md](BRIEFING-TEMPLATE.md).

## What's inside

22 specialized skills organized in 5 categories:
- **Core** — orchestrator, memory-manager, loop-controller, strategic-advisor, skill-resolver, project-manager
- **Quality** — critic, improver, bug-detector, opportunity-scanner
- **Build** — architect, database-architect, frontend-developer, backend-developer, api-designer
- **Product** — auth-engineer, billing-engineer, onboarding-engineer, deployment-engineer, product-copywriter, landing-page-engineer
- **Creative** — cinematic-lp

The repo also ships the [Remotion agent skills](https://github.com/remotion-dev/skills) (`remotion-*`, tracked in `skills-lock.json`) for video work in Claude Code. They are not packaged for Lovable.

More: [How it works](docs/how-it-works.md) · [Discovery log](docs/discovery.md) · [Contributing](.github/CONTRIBUTING.md)

## Discovered by

Luan Gabriel — May 24, 2026.

All 10 levels tested live, without simulation, with real system responses.

## License

MIT
