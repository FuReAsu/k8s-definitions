### Create secret for db password

```bash
kubectl create secret generic mmrcis-mssql-sa --from-literal=password=dbpassword --from-literal=connection-string="Server=mmrcis-mssql;Database=mmrcis;User ID=sa;Password=dbpassword;Encrypt=False" -n lab
```

This is used in db deployment and app deployment.
