# docker-mapnik3

## Supported tags and respective `Dockerfile` links

-   [`3.0.11`, `latest` (v3.0.11/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.11)
-   [`3.0.10` (v3.0.10/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.10)
-   [`3.0.9` (v3.0.9/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.9)
-   [`3.0.8` (v3.0.8/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.8)
-   [`3.0.7` (v3.0.7/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.7)
-   [`3.0.6` (v3.0.6/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.6)
-   [`3.0.5` (v3.0.5/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.5)
-   [`3.0.4` (v3.0.4/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.4)
-   [`3.0.3` (v3.0.3/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.3)
-   [`3.0.2` (v3.0.2/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.2)
-   [`3.0.1` (v3.0.1/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.1)
-   [`3.0.0` (v3.0.0/Dockerfile)](https://github.com/jawg/docker-mapnik3/tree/master/v3.0.0)

## What is Mapnik ?

Mapnik is an open source toolkit for developing mapping applications and rendering maps.
More informations on mapnik.org and [GitHub](https://github.com/mapnik/mapnik)

# About this image

The `jawg/mapnik3:latest` tag will always point the latest stable release (which is, at the time of this writing, `jawg/mapnik3:3.0.11`).
All stable images are based on `debian:jessie`.

Images contain mapnik3 source headers (in `/usr/local/include/mapnik/`), compiled sources (in `/usr/local/lib/`) and some plugins (in `/usr/local/lib/mapnik/input/`).
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
docker build -t jawg/mapnik3 docker-mapnik3/v3.0.0
```

Or build with the url :

```sh
docker build -t jawg/mapnik3 github.com/jawg/docker-mapnik3#master:v3.0.0
```

Or pull the image from [docker hub](https://hub.docker.com/r/jawg/mapnik3/) :

```sh
docker pull jawg/mapnik3:3.0.0
```

## Usage

If you have for example a node project

```Dockerfile
FROM jawg/mapnik3:3.0.0

ENTRYPOINT ["mapnik-render"]
```
