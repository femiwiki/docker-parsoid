Dockerized parsoid server [![Docker Hub Status]][Docker Hub Link]
========
```sh
docker build --tag femiwiki/parsoid .

docker run --detach \
  --name parsoid \
  --restart always \
  femiwiki/parsoid
```

&nbsp;

--------

The source code of *femiwiki/parsoid* is primarily distributed under the terms
of the [GNU Affero General Public License v3.0] or any later version. See
[COPYRIGHT] for details.

[Docker Hub Status]: https://badgen.net/docker/pulls/femiwiki/parsoid/?icon=docker&label=pulls
[Docker Hub Link]: https://hub.docker.com/r/femiwiki/parsoid/
[GNU Affero General Public License v3.0]: LICENSE
[COPYRIGHT]: COPYRIGHT
