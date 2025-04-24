# Handling deployment.toml #

The deployment.toml can be stored as a configmap and a secret.
Make sure the key to the data is the name of the statefulset pod.
For example, for wso2am-0 pod, use wso2am-0 as the key 

## Storing it as configmap ##
There's a manifest for it in the manifests

## Storing it as secret ##

```bash
kubectl create secret generic wso2am-config --from-file=wso2am-0=deployment-0.toml --from-file=wso2am-1=deployment-1.toml -n wso2 
```

# Handling Ingress TLS #

Create TLS certificates for each of the endpoints that are required by you. Available Endpoints:

- Manager Endpoint 
- REST Endpoint
- WebSocket Endpoint
- WebSub / WebHook Endpoint

Create Secrets from them:

```bash
kubectl create secret tls mgr-api-tls --cert=mgr.api.crt --key=mgr.api.key -n wso2
kubectl create secret tls gw-api-tls --cert=gw.api.crt --key=gw.api.key -n wso2
kubectl create secret tls ws-api-tls --cert=ws.api.crt --key=ws.api.key -n wso2
```