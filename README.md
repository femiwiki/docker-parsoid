# Dockerized parsoid server [![Container Registry]][container registry link]

A [Parsoid] Docker Image. This is originally created for [FemiWiki].

## Usage

The following command starts a Parsoid container:

```sh
docker run -p 8000:8000 [-e MEDIAWIKI_APIS_URI=...] [-e MEDIAWIKI_APIS_DOMAIN=...] ghcr.io/femiwiki/parsoid
```

Then, access it via http://localhost:8000/\_version in a browser.

### Environment Variables

| Variables             | Default               | Description                                                                                                                                                                                                                    |
| --------------------- | --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| PARSOID_NUM_WORKERS   | `'ncpu'`              | Number of worker processes to spawn.<br/>Set to 0 to run everything in a single process without clustering.<br/>Use `'ncpu'` to run as many workers as there are CPU units                                                     |
| MEDIAWIKI_APIS_URI    | `http://http/api.php` | API path for you wiki. (must be accessible by docker container)                                                                                                                                                                |
| MEDIAWIKI_APIS_DOMAIN | `femiwiki.com`        | Same as `$wgVirtualRestConfig['modules']['parsoid']['domain']` defined in [LocalSettings.php](https://www.mediawiki.org/wiki/Manual:LocalSettings.php) ([details](https://www.mediawiki.org/wiki/Parsoid/Setup#Configuration)) |
| MEDIAWIKI_APIS_PREFIX | `femiwiki`            | [details](https://www.mediawiki.org/wiki/Parsoid/Setup#Configuration)                                                                                                                                                          |
| MEDIAWIKI_LINTING     | `false`               | [details](https://www.mediawiki.org/wiki/Extension:Linter#Configuration_parameters)                                                                                                                                            |

## Build

```sh
docker build --tag ghcr.io/femiwiki/parsoid .
docker push ghcr.io/femiwiki/parsoid
```

&nbsp;

---

The source code of _femiwiki/parsoid_ is primarily distributed under the terms
of the [GNU Affero General Public License v3.0] or any later version. See
[COPYRIGHT] for details.

[container registry]: https://badgen.net/badge/icon/docker?icon=docker&label
[container registry link]: https://github.com/orgs/femiwiki/packages/container/parsoid
[femiwiki]: https://femiwiki.com
[parsoid]: https://www.mediawiki.org/wiki/Parsoid
[gnu affero general public license v3.0]: LICENSE
[copyright]: COPYRIGHT
