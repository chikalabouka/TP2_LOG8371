docker stop $(docker ps -a -q)
docker container prune -f
docker image prune -f
docker volume prune -f
cd ./elastic-jp-jm-multinode/ && sh deploy.sh