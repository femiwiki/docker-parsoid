Dockerized parsoid server
========

```
docker build --tag femiwiki/parsoid .

docker run --detach \
  --name parsoid \
  --restart always \
  --publish 80:8000 \
  femiwiki/parsoid
```
