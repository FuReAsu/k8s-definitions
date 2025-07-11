## Commands used to set up the user account and context

Set User
```'bash'
kubectl config set-credentials martin --client-key='/root/martin.key' --client-certificate='/root/martin.crt'
```

Set Context

```'bash'
kubectl config set-context developer --cluster=kubernetes --user=martin
```
Change Context

```'bash'
kubectl config use-context developer
```

