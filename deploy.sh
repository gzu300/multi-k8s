docker build -t zguanchen/multi-client -f ./client/Dockerfile ./client
docker build -t zguanchen/multi-server -f ./server/Dockerfile ./server
docker build -t zguanchen/multi-worker -f ./worker/Dockerfile ./worker

docker push zguanchen/multi-client
docker push zguanchen/multi-server
docker push zguanchen/multi-worker

kubectl rollout restart deployment/client-deployment
kubectl rollout restart deployment/worker-deployment
kubectl rollout restart deployment/server-deployment