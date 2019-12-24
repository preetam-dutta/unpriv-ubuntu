#!/usr/bin/env bash

set -o errexit

which docker
which kubectl
cd $(dirname $0)

echo "=========================="
echo "  building docker image"
echo "--------------------------"
echo ""
sleep 1
docker build -t unpriv-ubuntu:latest .
echo ""
echo "=========================="
echo "  deploying pod"
echo "--------------------------"
echo ""
sleep 1
kubectl apply -f ./unpriv-ubuntu-pod.yaml
echo ""
echo "=========================="
echo "  going inside the pod"
echo "--------------------------"
echo ""
sleep 1
kubectl exec -it unpriv-ubuntu bash
