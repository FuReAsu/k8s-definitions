# Handling deployment.toml #

The deployment.toml can be stored as a configmap and a secret.

Storing it as a configmap will allow easier edits but storing it as a secret is more secure as it contains database credentials.

## Storing it as configmap ##
There's a manifest for it in the manifests

## Storing it as secret ##

```bash
kubectl create secret tls mgr-api-tls --cert=mgr.api.crt --key=mgr.api.key
kubectl create secret tls gw-api-tls --cert=gw.api.crt --key=gw.api.key
kubectl create secret tls ws-api-tls --cert=ws.api.crt --key=ws.api.key
```