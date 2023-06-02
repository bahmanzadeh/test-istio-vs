# test-istio-vs
Testing ISTIO Virtual Services - DNS test - Shortnames - FQDN- Ingress Traffics and Inside Mesh Traffics

In this test we are using a canary deployment as well as other routing rules in virtual service.
- svc1v1 and svc1v2 are deployed in NS1
- svc2v1 and svc2v2 are deployed in NS2

Install netutils pod for troubleshooting:
kubectl run tenantns2-svc --image=rezabah/netutils:1.0 -n ns2 -l mylabel=mypod2 -i --tty -- /bin/bash
kubectl run tenantns3-svc --image=rezabah/netutils:1.0 -n ns3 -l mylabel=mypod3 -i --tty -- /bin/bash

attach to the container if it has tty :
kubectl attach -it netutils -c netutils -n ns2

ssh to a pod:
kubectl exec -it netutils -n ns2 -- /bin/bash

Curl in loop:
for ((i=1;i<=10;i++)); do curl helloworld-svc1.ns1; done | grep SVC1

change the host header or agent in the curl command:
curl -A "Firefox" -H "Host: helloweb.dev" 192.1.1.1
curl -H "end-user: jason" www.example.com

restart a deployment for a namespace:
kubectl rollout restart deploy -n ns1

