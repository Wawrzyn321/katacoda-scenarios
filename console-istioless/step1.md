# Install Console


[tu so porty](http://[[HOST_SUBDOMAIN]]-[[KATACODA_HOST]].environments.katacoda.com)


```
sed -i "s/window.clusterConfig = {/&\n      coreModuleUrl: '2886795279-8889-ollie09.environments.katacoda.com',"/ resources/console/charts/web/templates/configmap.yaml
```{{execute}}


```
helm upgrade -i console resources/console -n kyma-system --set global.ingress.domainName=[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com --set global.environment.gardener=false
```{{execute}}



1st terminal
```
echo 'Waiting for console-web pod to start...'

until kubectl -nkyma-system wait --for=condition=ready pod -l app=console-web > /dev/null 2>&1
do
  sleep 0.5
done

echo 'console-web up and running, creating port-forward...'

POD_NAME=$(kubectl -nkyma-system get po -l app=console-web -o name)
kubectl port-forward $POD_NAME -nkyma-system --address 0.0.0.0 8889:8060 8890:8070

```{{execute}}


2nd terminal
```
echo 'Waiting for console-backend pod to start...'

until kubectl -nkyma-system wait --for=condition=ready pod -l app=console-backend > /dev/null 2>&1
do
  sleep 0.5
done

echo 'console-backend up and running, creating port-forward...'

POD_NAME=$(kubectl -nkyma-system get po -l app=console-backend -o name)
kubectl port-forward $POD_NAME -nkyma-system --address 0.0.0.0 80:3000
```{{execute}}


after both forwarded:
[Console](http://[[HOST_SUBDOMAIN]]-8890-[[KATACODA_HOST]].environments.katacoda.com/)

