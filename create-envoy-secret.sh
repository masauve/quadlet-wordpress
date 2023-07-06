kubectl create secret generic envoy-certificates \
    --from-file=certificate.key \
    --from-file=certificate.pem \
    --dry-run=true \
    -o yaml | \
    podman kube play -

