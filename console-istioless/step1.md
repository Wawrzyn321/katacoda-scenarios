Adjust microfrontend URL to work with Katacoda
```
sed -i "s/window.clusterConfig = {/&\n      coreModuleUrl: 'http:\/\/[[HOST_SUBDOMAIN]]-8889-[[KATACODA_HOST]].environments.katacoda.com',"/ resources/console/charts/web/templates/configmap.yaml
sed -i "s/window.clusterConfig = {/&\n      coreAppUrl: 'http:\/\/[[HOST_SUBDOMAIN]]-8890-[[KATACODA_HOST]].environments.katacoda.com\/consoleapp.html#',"/ resources/console/charts/web/templates/configmap.yaml
```{{execute}}


Install Console chart
```
helm upgrade -i console resources/console -n kyma-system --set global.ingress.domainName=[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com --set global.environment.gardener=false
```{{execute}}
