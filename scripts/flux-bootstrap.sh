#!/usr/bin/env bash

set -euo pipefail

CLUSTER_NAME="$1"

flux bootstrap github \
  --owner=ppawiggers \
  --repository=infra-gitops-flux \
  --branch=main \
  --path="clusters/${CLUSTER_NAME}"
