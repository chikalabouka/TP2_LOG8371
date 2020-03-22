image_name=elastic-jp-jm-image
docker build -t $image_name .
sed -i "s/{docker-image}/$image_name/g" docker-compose.yml
docker-compose up -d
