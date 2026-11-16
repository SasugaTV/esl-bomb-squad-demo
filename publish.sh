#!/usr/bin/env bash
# Push the current web/ folder to the gh-pages branch, which GitHub Pages serves.
# Commit your changes on main first, then run ./publish.sh
set -euo pipefail
cd "$(dirname "$0")"
git push origin main
git push --force origin "$(git subtree split --prefix web main)":refs/heads/gh-pages
echo "Published: https://sasugatv.github.io/esl-bomb-squad-demo/ (live in ~1 minute)"
