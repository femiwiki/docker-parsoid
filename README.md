Dockerized parsoid server
========
[Docker Hub Link](https://hub.docker.com/r/femiwiki/parsoid/)

```shell
docker build --tag femiwiki/parsoid .

docker run --detach \
  --name parsoid \
  --restart always \
  --publish 80:8000 \
  femiwiki/parsoid
```
