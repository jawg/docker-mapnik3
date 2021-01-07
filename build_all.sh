#!/bin/bash
set -e
FROM=22
TO=24
for i in $(seq $FROM $TO); do
  echo "Building jawg/mapnik3:3.0.$i"
  docker build --pull -q -t jawg/mapnik3:3.0.$i v3.0.$i
  echo "Pushing jawg/mapnik3:3.0.$i"
  docker push jawg/mapnik3:3.0.$i
done
docker tag jawg/mapnik3:3.0.$TO jawg/mapnik3:latest
docker push jawg/mapnik3:latest
