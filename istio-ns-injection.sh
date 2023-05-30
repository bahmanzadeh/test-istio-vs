#!/bin/bash
kubectl create namespace ns1 
kubectl create namespace ns2
kubectl create namespace ns3
kubectl label namespace ns1 istio-injection=enabled
kubectl label namespace ns2 istio-injection=enabled
kubectl label namespace ns3 istio-injection=enabled
#kubectl rollout restart deploy -n ns1
#kubectl rollout restart deploy -n ns2