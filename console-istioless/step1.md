# Install Console


[tu so porty](http://[[HOST_SUBDOMAIN]]-[[KATACODA_HOST]].environments.katacoda.com)


```
sed -i "s/window.clusterConfig = {/&\n      coreModuleUrl: '2886795279-8889-ollie09.environments.katacoda.com',"/ resources/console/charts/web/templates/configmap.yam
```{{execute}}


```
helm upgrade -i console resources/console -n kyma-system --set global.ingress.domainName=[[HOST_SUBDOMAIN]]-[[KATACODA_HOST]].environments.katacoda.com --set global.environment.gardener=false
```{{execute}}


[Console](http://[[HOST_SUBDOMAIN]]-[[KATACODA_HOST]].environments.katacoda.com/)


kubectl port-forward console-web-74b6bf5dcb-6p5w4 -nkyma-system --address 0.0.0.0 8889:8060 8890:8070

kubectl port-forward console-backend-8664d7d6c8-khkpw -nkyma-system --address 0.0.0.0 80:3000
