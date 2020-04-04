#!/usr/bin/env bash

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "usage: bash $0 <values.yaml>" >&2
  exit 1
fi

VALUES="$1"

kubectl create ns flux

helm repo add fluxcd https://charts.fluxcd.io
helm install -n flux -f "$VALUES" helm-operator fluxcd/helm-operator
helm install -n flux -f "$VALUES" flux fluxcd/flux --wait

fluxctl identity --k8s-fwd-ns flux
