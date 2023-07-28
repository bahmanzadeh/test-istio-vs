# Convert shortnames to FQDNs for service calls
We need to inject data during runtime to the application pod
This can be done using ConfigMap. The key=value pair are populated in configmap

For example for maping shortname to FQDN for services in the namespaces ns1 and ns2, two files are created:
ns1-services
ns2-services

Now you need to create configMap from these text files in every namespace:
kubectl create configmap services-fqdn --from-env-file=ns1-services --from-env-file=ns2-services -n ns1
kubectl create configmap services-fqdn --from-env-file=ns1-services --from-env-file=ns2-services -n ns2

