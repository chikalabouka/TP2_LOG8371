sed -i "s/{elasticsearch-binaries}/elasticsearch-7.6.1-linux-x86_64.tar.gz/g" Dockerfile
docker build -t elastic-self-image .
sed -i "s/{docker-image}/elastic-self-image/g" docker-compose.yml
docker-compose up -d
