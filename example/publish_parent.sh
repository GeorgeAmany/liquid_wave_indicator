#!/usr/bin/env bash
# Validates or publishes the repo-root package (liquid_wave_indicator), not this example app.
set -euo pipefail
cd "$(dirname "$0")"
exec dart pub publish --directory=.. "$@"
