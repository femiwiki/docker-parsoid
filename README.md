Dockerized parsoid server [![Docker Hub Status]][Docker Hub Link]
========
```sh
docker build --tag femiwiki/parsoid .

docker run --detach \
  --name parsoid \
  --restart always \
  --publish 80:8000 \
  femiwiki/parsoid
```

[Docker Hub Status]: https://badgen.net/docker/pulls/femiwiki/parsoid/?icon=docker&label=pulls
[Docker Hub Link]: https://hub.docker.com/r/femiwiki/parsoid/
