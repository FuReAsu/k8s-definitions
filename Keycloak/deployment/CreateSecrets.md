# Create TLS Secret for Keycloak #

```bash
kubectl create secret tls kc-dev-tls --cert kc.crt --key kc.key -n keycloak
```

# Create DB Username and Password for Keycloak #

```bash
kubectl create secret generic keycloak-db-credentials \
  --from-literal=username=keycloak \
  --from-literal=password=keycloakP@ssw0rd2025
```
