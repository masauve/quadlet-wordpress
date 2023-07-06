MYSQL_ROOT_PASSWORD=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 13)

kubectl create secret generic \
    --from-literal=password="${MYSQL_ROOT_PASSWORD}" \
    mysql-root-password-kube \
    --dry-run=true \
    -o yaml | \
    podman kube play -

echo -n "${MYSQL_ROOT_PASSWORD}" | \
    podman secret create mysql-root-password-container -
