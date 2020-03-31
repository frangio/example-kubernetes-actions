An example GitOps pipeline for Kubernetes using GitHub Actions and the GitHub
Package Registry.

On every push, a Docker image is built and published in the GitHub Package
Registry.

[A separate repository][infra-staging] contains the Kubernetes configuration
for a staging environment. On pushes to `master` this configuration is updated
to use the new image.

[infra-staging]: https://github.com/frangio/example-kubernetes-actions-infrastructure-staging
