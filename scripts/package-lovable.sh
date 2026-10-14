#!/usr/bin/env bash
# Builds one Lovable-importable zip per multi-agent skill (SKILL.md at the zip root).
# Usage: ./scripts/package-lovable.sh   -> dist/lovable-zips/<skill>.zip
set -euo pipefail
cd "$(dirname "$0")/.."
out=dist/lovable-zips
rm -rf "$out" && mkdir -p "$out"
for dir in .claude/skills/*/; do
  name=$(basename "$dir")
  case "$name" in remotion-*) continue ;; esac
  (cd "$dir" && zip -q -j "../../../$out/$name.zip" SKILL.md)
done
echo "$(ls "$out" | wc -l) zips in $out"
