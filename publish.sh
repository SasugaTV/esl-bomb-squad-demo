#!/usr/bin/env bash
# Push the current web/ folder to the gh-pages branch, which GitHub Pages serves,
# on both GitHub accounts (origin = SasugaTV, teacher = TeacherJeremyFord).
# Commit your changes on main first, then run ./publish.sh
set -euo pipefail
cd "$(dirname "$0")"
pages=$(git subtree split --prefix web main)
for remote in origin teacher; do
  git push "$remote" main
  git push --force "$remote" "$pages":refs/heads/gh-pages
done
echo "Published (live in ~1 minute):"
echo "  https://sasugatv.github.io/esl-bomb-squad-demo/"
echo "  https://teacherjeremyford.github.io/esl-bomb-squad-demo/"
