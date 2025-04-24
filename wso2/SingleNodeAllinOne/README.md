# Handling deployment.toml #

The deployment.toml can be stored as a configmap and a secret.

Storing it as a configmap will allow easier edits but storing it as a secret is more secure as it contains database credentials.

## Storing it as configmap ##
There's a manifest for it in the manifests

## Storing it as secret ##

```bash
kubectl create secret generic wso2am-config --from-file=wso2am-0=deployment.toml -n wso2 
```

# Handling Ingress TLS #

Create TLS certificates for each of the endpoints that are required by you. Available Endpoints:

- Manager Endpoint 
- REST Endpoint
- WebSocket Endpoint
- WebSub / WebHook Endpoint

```bash
kubectl create secret tls mgr-api-tls --cert=mgr.api.crt --key=mgr.api.key -n wso2
kubectl create secret tls gw-api-tls --cert=gw.api.crt --key=gw.api.key -n wso2
kubectl create secret tls ws-api-tls --cert=ws.api.crt --key=ws.api.key -n wso2
```