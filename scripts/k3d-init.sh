#!/usr/bin/env bash

set -euo pipefail

CLUSTER="$1"

kubectl apply -f "clusters/$CLUSTER/flux-system"
