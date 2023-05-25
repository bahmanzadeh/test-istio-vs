# test-istio-vs
Testing ISTIO Virtual Services - DNS test - Shortnames - FQDN- Ingress Traffics and Inside Mesh Traffics

In this test we are using a canary deployment:
- svc1v1 and svc1v2 are deployed in NS1
- svc2v1 and svc2v2 are deployed in NS2

Curl in loop:
for ((i=1;i<=10;i++)); do curl helloworld-svc1.ns1; done

