elasticbinaries=$(ls | grep *.tar.gz)
echo binary file is : $elasticbinaries
sed -i "s/{elasticsearch-binaries}/$elasticbinaries/g" Dockerfile
docker build -t elastic-self-image .
sed -i "s/{docker-image}/elastic-self-image/g" docker-compose.yml
docker-compose up -d
