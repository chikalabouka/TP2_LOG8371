docker build -t elastic-self-image .
sed -i "s/{docker-image}/elastic-self-image/g" docker-compose.yml
docker-compose up -d
