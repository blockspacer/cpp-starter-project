#!/usr/bin/env bash

set -euo pipefail
IFS=$'\n\t'

###############################################################################
# Run shellcheck on all shell scripts (for usage in CIs)
# If you develop for this project, please use `make shellcheck`.
###############################################################################

cd "$( cd "$(dirname "$0")"; pwd -P )/.."

echo "Run shellcheck on all source files"
find . ! -path "./build/*" -type f -name "*.sh" -exec shellcheck -e SC2010 -e SC2016 {} \+
