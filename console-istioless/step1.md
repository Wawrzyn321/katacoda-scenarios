# Install Console


[tu so porty](http://[[HOST_SUBDOMAIN]]-[[KATACODA_HOST]].environments.katacoda.com)


```
sed -i "s/window.clusterConfig = {/&\n      coreModuleUrl: '2886795279-8889-ollie09.environments.katacoda.com',"/ resources/console/charts/web/templates/configmap.yam
```{{execute}}


todo - czy host-80-katacoda-host?
```
helm upgrade -i console resources/console -n kyma-system --set global.ingress.domainName=[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com --set global.environment.gardener=false
```{{execute}}
