kubectl create namespace confluent
kubectl config set-context --current --namespace confluent
helm repo add confluentinc https://packages.confluent.io/helm
helm repo update
helm upgrade --install confluent-operator confluentinc/confluent-for-kubernetes
kubectl apply -f cp/confluent-platform.yaml

kubectl apply -f cp/producer-app-data.yaml
kubectl get pods


kubectl port-forward controlcenter-0 9021:9021