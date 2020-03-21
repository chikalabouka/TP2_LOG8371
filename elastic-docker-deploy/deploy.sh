image_name=elastic-self-image
elasticbinaries=$(ls | grep *.tar.gz)
echo binary file is : $elasticbinaries
sed -i "s/{elasticsearch-binaries}/$elasticbinaries/g" Dockerfile
docker build -t $image_name .
sed -i "s/{docker-image}/$image_name/g" docker-compose.yml
docker-compose up -d
