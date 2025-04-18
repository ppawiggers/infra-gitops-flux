#!/usr/bin/env bash

set -euo pipefail

# Exit if no argument passed
if [ -z "$GITHUB_TOKEN" ]; then
  echo "Please set GITHUB_TOKEN"
  exit 1
fi

CLUSTER="$1"

flux bootstrap github \
  --owner=ppawiggers \
  --repository=infra-gitops-flux \
  --branch=main \
  --path="clusters/$CLUSTER" \
  --personal=true
