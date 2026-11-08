#!/bin/sh
# Encrypts src/index.html (never pushed) into ./index.html (the published page).
# StatiCrypt asks for the password interactively, so it never lands in shell history.
set -e
cd "$(dirname "$0")"
npx staticrypt src/index.html -d . --short
echo "Encrypted ./index.html is ready. Commit and push it."
