#!/bin/bash
# Builds the site and serves it locally at http://localhost:8888
set -e
cd "$(dirname "$0")"
./build.sh
cd docs && python3 -m http.server 8888
