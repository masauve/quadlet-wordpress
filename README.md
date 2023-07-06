# quadlet-wordpress

create or copy existing certificate:
openssl req -x509 -sha256 -nodes -days 365     -newkey rsa:4096 -keyout certificate.key -out certificate.pem

install kubectl
curl -L --remote-name-all https://storage.googleapis.com/kubernetes-release/release/${RELEASE}/bin/linux/amd64/{kubeadm,kubelet,kubectl}
chmod +x {kubeadm,kubelet,kubectl}

set path

copy to: /etc/containers/systemd/

systemctl daemon-reload
systemctl start quadlet-demo.service


