# quadlet-wordpress

create or copy existing certificate:
openssl req -x509 -sha256 -nodes -days 365     -newkey rsa:4096 -keyout certificate.key -out certificate.pem

install kubectl

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubetl

set path

Create secrets:

kubectl create secret generic \
    --from-file=certificate.key \
    --from-file=certificate.pem \
    envoy-certificates \
    --dry-run=true \
    -o yaml | \
    podman kube play -



Copy the unit files along with any additional files (such as the Kubernetes YAML file when using a .kube file) to the following directory:
Rootful mode: /etc/containers/systemd
Rootless mode: $HOME/.config/containers/systemd/
Force the generator by calling:
Rootful mode: systemctl daemon-reload
Rootless mode: systemctl –user daemon-reload
Start the services by calling:
Rootful mode: systemctl start <Unit File Name>.service
Rootless mode: systemctl –user start <Unit File Name>.service

