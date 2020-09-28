echo 'Waiting for console-web pod to start...'

until kubectl -nkyma-system wait --for=condition=ready pod -l app=console-web > /dev/null 2>&1
do
  sleep 0.5
done

echo 'console-web up and running, creating port-forward...'

POD_NAME=$(kubectl -nkyma-system get po -l app=console-web -o name)
kubectl port-forward $POD_NAME -nkyma-system --address 0.0.0.0 8889:8060 8890:8070
