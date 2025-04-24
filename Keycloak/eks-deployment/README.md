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

## Create TLS Secret for Keycloak ##

```bash
kubectl create secret tls kc-dev-tls --cert tls/kc.crt --key tls/kc.key -n keycloak
```

## Handling TLS Certs For Ingress ##

On EKS, while using ALB ingress, Certificates Managed by AWS Certificate Manager can be used.

To use it, import the certificates to ACM and point the ALB to it using annotations.

Required Ingress Annotations:

```yaml
annotations:
  alb.ingress.kubernetes.io/scheme: "internet-facing"
  alb.ingress.kubernetes.io/listen-ports: '[{"HTTPS":443}]'
  alb.ingress.kubernetes.io/target-type: 'ip'
  alb.ingress.kubernetes.io/load-balancer-name: "<name>"
  alb.ingress.kubernetes.io/certificate-arn: "<certificate-arn>"
  alb.ingress.kubernetes.io/target-group-attributes: "stickiness.enabled=true,stickiness.lb_cookie.duration_seconds=3600"
  alb.ingress.kubernetes.io/backend-protocol: "HTTPS"
```