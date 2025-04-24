## Create TLS Secret for Keycloak ##

```bash
kubectl create secret tls kc-dev-tls --cert tls/kc.crt --key tls/kc.key -n keycloak
```
This secret can be used for Ingress TLS.

## Create DB Username and Password for Keycloak ##

```bash
kubectl create secret generic kc-dev-db \
  --from-literal=username=keycloak \
  --from-literal=password=keycloakP@ssw0rd2025 \
  -n keycloak
```

## Create MySQL Root Password ##

```bash
kubectl create secret generic kc-dev-mysql-root \
  --from-literal=root-password=P@ssw0rd2025 \
  -n keycloak
```