# Install Console


[tu so porty](http://[[HOST_SUBDOMAIN]]-[[KATACODA_HOST]].environments.katacoda.com)


```
sed -i "s/window.clusterConfig = {/&\n      coreModuleUrl: 'http:\/\/[[HOST_SUBDOMAIN]]-8889-[[KATACODA_HOST]].environments.katacoda.com',"/ resources/console/charts/web/templates/configmap.yaml
```{{execute}}


```
helm upgrade -i console resources/console -n kyma-system --set global.ingress.domainName=[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com --set global.environment.gardener=false
```{{execute}}


1st terminal
```
/root/forward-console.sh
```{{execute}}


2nd terminal
```
/root/forward-backend.sh
```{{execute T2}}


after both forwarded:
[Console](http://[[HOST_SUBDOMAIN]]-8890-[[KATACODA_HOST]].environments.katacoda.com/)

