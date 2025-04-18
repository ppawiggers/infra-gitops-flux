#!/usr/bin/env bash

set -euo pipefail

CLUSTER="$1"

kubectl apply --server-side -f "clusters/$CLUSTER/flux-system/gotk-components.yaml"
flux check
kubectl apply --server-side -f "clusters/$CLUSTER/flux-system/gotk-sync.yaml"
