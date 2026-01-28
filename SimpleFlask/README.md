## Create TLS cert
```bash
openssl ecparam -name prime256v1 -genkey -out simple-flask.key
```
```bash
openssl req -new -key simple-flask.key -out simple-flask.csr -subj "/C=MM/ST=YANGON/L=MYG/O=HOME/CN=simple-flask"
```

Create ext file for SANs
```bash
subjectAltName = @alt_names

[ alt_names ]
DNS.1 = simple-flask.lab.local
```
```bash
openssl x509 -req -in simple-flask.csr -out simple-flask.crt -signkey simple-flask.key -days 365 -sha256 -extfile simple-flask.ext
```

## TLS secret for Istio Gateway Ingress

```bash
kubectl -n istio-system create secret tls simple-flask-tls --cert=./simple-flask.crt --key=./simple-flask.key
```
> [!NOTE]
> The tls secret must be in istio-system namespace or in the same namespace as the istioingressgateway pod.
> The istioingressgateway pod uses the tls secret to perform TLS termination for each gateway resources defined.
> A more refined pattern would be centralized gateways (with multiple host matchings) that use multiple tls secrets all in istio-system.
