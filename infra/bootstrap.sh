#!/usr/bin/env bash

set -euo pipefail

if [ $# -lt 1 ]; then
  echo "usage: bash $0 <git-url>" >&2
  exit 1
fi

GIT_URL="$1"

kubectl create ns flux

helm repo add fluxcd https://charts.fluxcd.io
helm install -n flux helm-operator fluxcd/helm-operator --set helm.versions=v3
helm install -n flux flux fluxcd/flux --set git.url="$GIT_URL" --wait

fluxctl identity --k8s-fwd-ns flux
