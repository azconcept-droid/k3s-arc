#!/bin/bash
INSTALL_K3S_VERSION="v1.24.10+k3s1"
DATASTORE_ENDPOINT=mysql://username:password@tcp(hostname:3306)/database-name

curl -sfL https://get.k3s.io |  INSTALL_K3S_VERSION=<VERSION> sh -s - server \
  --datastore-endpoint="<DATASTORE_ENDPOINT>"

# MAIN SERVER NODE TOKEN
cat /var/lib/rancher/k3s/server/token

curl -sfL https://get.k3s.io |  INSTALL_K3S_VERSION=<VERSION> sh -s - server \
  --datastore-endpoint="<DATASTORE_ENDPOINT>" \
  --token "<MAIN_SERVER_NODE_TOKEN>"

sudo k3s kubectl get nodes
# AMAZON LINUX INSTALLATION
curl -sfL https://get.k3s.io | INSTALL_K3S_SKIP_SELINUX_RPM=true sh -
