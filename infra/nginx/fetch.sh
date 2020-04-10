#!/usr/bin/env sh

cd "$(dirname "$BASH_SOURCE")"

version=0.30.0
base_url="https://raw.githubusercontent.com/kubernetes/ingress-nginx/nginx-$version/deploy/static"

curl -LO "$base_url/mandatory.yaml" -O "$base_url/provider/cloud-generic.yaml"
