sudo docker volume create linkstack
sudo docker run --detach \
    --name linkstack \
    --publish 280:80 \
    --publish 2443:443 \
    --restart unless-stopped \
    --mount source=linkstack,target=/htdocs \
    linkstackorg/linkstack
    
