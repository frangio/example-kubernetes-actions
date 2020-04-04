#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$BASH_SOURCE")"

source helpers.sh

flux-install flux flux --wait -f flux.yaml

fluxctl identity --k8s-fwd-ns flux
