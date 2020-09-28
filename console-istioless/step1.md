# Install Console


```
echo [[HOST_SUBDOMAIN]]
```{{execute}}

```
echo [[KATACODA_HOST]]
```

[tu so porty]([[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com)


```
helm upgrade -i console resources/console -n kyma-system --set global.ingress.domainName=[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com --set global.environment.gardener=false
```{{execute}}
