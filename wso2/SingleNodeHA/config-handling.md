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