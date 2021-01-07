# docker-mapnik3

## Supported tags and respective `Dockerfile` links

-   [`3.0.24`, `latest` (v3.0.24/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.24/Dockerfile)
-   [`3.0.23` (v3.0.23/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.23/Dockerfile)
-   [`3.0.22` (v3.0.22/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.22/Dockerfile)

## What is Mapnik ?

Mapnik is an open source toolkit for developing mapping applications and rendering maps.
More informations on mapnik.org and [GitHub](https://github.com/mapnik/mapnik)

# About this image

The `jawg/mapnik3:latest` tag will always point the latest stable release (which is, at the time of this writing, `jawg/mapnik3:3.0.18`).
All stable images are based on `debian:jessie-slim`.

Images contain mapnik3 source headers (in `/usr/local/include/mapnik/`), compiled sources (in `/usr/local/lib/`) and some plugins (in `/usr/local/lib/mapnik/input/` with symlink to `/usr/lib/mapnik`).
Available plugins are:

-   gdal
-   ogr
-   pgraster
-   postgis
-   raster
-   shape
-   sqlite

## Get the docker image

You can get the image in three ways

From sources with this command :

```sh
git clone https://github.com/jawg/docker-mapnik3.git
docker build -t jawg/mapnik3 docker-mapnik3/v3.0.22
```

Or build with the url :

```sh
docker build -t jawg/mapnik3 github.com/jawg/docker-mapnik3#master:v3.0.22
```

Or pull the image from [docker hub](https://hub.docker.com/r/jawg/mapnik3/) :

```sh
docker pull jawg/mapnik3:3.0.22
```

## Usage

```Dockerfile
FROM jawg/mapnik3:3.0.22

ENTRYPOINT ["mapnik-render"]
```
