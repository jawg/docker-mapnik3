#!/bin/bash
set -e
FROM=0
TO=1
for i in $(seq $FROM $TO); do
  tag="3.$i"
  echo "Building jawg/mapnik3:$tag"
  docker build --pull -q -t jawg/mapnik3:$tag v$tag
  echo "Pushing jawg/mapnik3:$tag"
  docker push jawg/mapnik3:$tag
done
docker tag jawg/mapnik3:3.$TO jawg/mapnik3:latest
docker push jawg/mapnik3:latest
