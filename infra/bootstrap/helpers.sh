flux-install() {
  kubectl get ns flux 2>&1 > /dev/null || kubectl create ns flux
  helm install -n flux --repo https://charts.fluxcd.io "$@"
}
