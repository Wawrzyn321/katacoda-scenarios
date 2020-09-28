echo 'Waiting for console-backend pod to start...'

until kubectl -nkyma-system wait --for=condition=ready pod -l app=console-backend > /dev/null 2>&1
do
  sleep 0.5
done

echo 'console-backend up and running, creating port-forward...'

POD_NAME=$(kubectl -nkyma-system get po -l app=console-backend -o name)
kubectl port-forward $POD_NAME -nkyma-system --address 0.0.0.0 80:3000
