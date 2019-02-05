Dockerized parsoid server [![Docker Hub Status]][Docker Hub Link]
========

[페미위키]를 위한 [Parsoid] Docker Image

## 실행하기

다음 명령으로 Parsoid를 8000 포트로 열 수 있습니다.

```sh
docker run -p 8000:8000 [-e MEDIAWIKI_APIS_URI=...] [-e MEDIAWIKI_APIS_DOMAIN=...] femiwiki/parsoid
```

이후 [http://localhost:8000/_version](http://localhost:8000/_version)에 접속하여 작동을 확인해 주세요.

### 환경 변수

| 이름 | 기본값 | 설명 |
--|--|--
MEDIAWIKI_APIS_URI | `http://http/api.php` | 위키의 API path. Container 안에서 접근할 수 있는 것이어야 하며 그러므로 별도로 네트워크 설정을 하지 않는다면`localhost/api.php`와 같은 주소는 사용할 수 없습니다.
MEDIAWIKI_APIS_DOMAIN | `femiwiki.com` | 위키의 [LocalSettings.php](https://www.mediawiki.org/wiki/Manual:LocalSettings.php)에서 정의한 `$wgVirtualRestConfig['modules']['parsoid']['domain']`과 동일한 값 ([자세한 설명](https://www.mediawiki.org/wiki/Parsoid/Setup#Configuration))

## 빌드

```sh
docker build --tag femiwiki/parsoid .
docker push femiwiki/parsoid
```

&nbsp;

--------

The source code of *femiwiki/parsoid* is primarily distributed under the terms
of the [GNU Affero General Public License v3.0] or any later version. See
[COPYRIGHT] for details.

[Docker Hub Status]: https://badgen.net/docker/pulls/femiwiki/parsoid/?icon=docker&label=pulls
[Docker Hub Link]: https://hub.docker.com/r/femiwiki/parsoid/
[페미위키]: https://femiwiki.com
[Parsoid]: https://www.mediawiki.org/wiki/Parsoid
[GNU Affero General Public License v3.0]: LICENSE
[COPYRIGHT]: COPYRIGHT
