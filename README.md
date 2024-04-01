minikube start
minikube start --driver=docker

kubectl apply -f kubernetes.yaml

kubectl get deployment
kubectl get service
minikube service fast-api-service

kubectl delete pod <이름>
kubectl delete pod --all
kubectl delete deployment <이름>
kubectl delete deployment --all
kubectl delete service <이름>
kubectl delete service --all

minikube docker-env
eval $(minikube -p minikube docker-env)
# image build
minikube image ls --format table

docker image tag miraen-eng-eval-engine:0.1.0 jaruda/miraen-eng-eval-engine:0.1.0
