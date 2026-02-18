#!/bin/bash
set -euo pipefail

# Only run in remote Claude Code environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# This is a static HTML project with no build dependencies.
# No installation steps are required.
echo "Session ready: static HTML project, no dependencies to install."
