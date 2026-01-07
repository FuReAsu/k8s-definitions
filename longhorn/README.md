## Create secret for basic auth

Generate auth file containing username and password
```bash
USER=<USERNAME_HERE>; PASSWORD=<PASSWORD_HERE>; echo "${USER}:$(openssl passwd -stdin -apr1 <<< ${PASSWORD})" >> auth
```

Create secret from that file

```bash
kubectl -n longhorn-system create secret generic longhorn-basic-auth --from-file=auth
```
