flux-install() {
  kubectl get ns flux >/dev/null 2>&1 || kubectl create ns flux
  helm install -n flux --repo https://charts.fluxcd.io "$@"
}
