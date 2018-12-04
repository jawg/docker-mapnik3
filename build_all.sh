#!/bin/bash
set -e
for i in {0..21}; do
  echo "Building jawg/mapnik3:3.0.$i"
  docker build --pull -q -t jawg/mapnik3:3.0.$i v3.0.$i
  echo "Pushing jawg/mapnik3:3.0.$i"
  docker push jawg/mapnik3:3.0.$i
done
