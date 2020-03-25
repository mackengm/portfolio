# m4ck3ngm portfolio

This project defines Mackenzie's portfolio on the summitt-dweller-DO-docker droplet.  

# Deploying this Site

This site is intended to be deployed using [dockerized-server](https://github.com/McFateM/dockerized-server) approach, and the command stream used to launch [the page]( https://portfolio.m4ck3ngm.com/) on the droplet is:

```
NAME=portfolio  
HOST=portfolio.m4ck3ngm.com  
IMAGE="m4ck3ngm/portfolio"  
docker container run -d --name ${NAME} \
    --label traefik.backend=${NAME} \
    --label traefik.docker.network=web \
    --label "traefik.frontend.rule=Host:${HOST}" \
    --label traefik.port=80 \
    --label com.centurylinklabs.watchtower.enable=true \
    --network web \
    --restart always \
    ${IMAGE}
```
