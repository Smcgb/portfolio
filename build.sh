#!/bin/bash
# Builds the site into docs/ for GitHub Pages.
# Pass a basepath if serving from a subpath (e.g. "/portfolio/");
# defaults to "/" for a custom domain.
set -e
cd "$(dirname "$0")"
python3 generator/src/main.py "${1:-/}"
