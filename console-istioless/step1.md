# Install Console


[tu so porty](http://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com)


```
helm upgrade -i console resources/console -n kyma-system --set global.ingress.domainName=[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com --set global.environment.gardener=false
```{{execute}}
