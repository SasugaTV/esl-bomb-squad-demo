#!/usr/bin/env bash
# Push the current web/ folder to the gh-pages branch, which GitHub Pages serves.
# Publishes to the TeacherJeremyFord copy only (remote "teacher"); that is the demo copy
# being worked on. The SasugaTV copy (remote "origin") is left as it was.
# Commit your changes on main first, then run ./publish.sh
set -euo pipefail
cd "$(dirname "$0")"
git push teacher main
git push --force teacher "$(git subtree split --prefix web main)":refs/heads/gh-pages
echo "Published: https://teacherjeremyford.github.io/esl-bomb-squad-demo/ (live in ~1 minute)"
