#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$BASH_SOURCE")"

source helpers.sh

flux-install helm-operator helm-operator --set helm.versions=v3
