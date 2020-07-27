#!/bin/bash
cd "$(dirname $0)"

export HUGO_CANONIFYURLS=false
HOST="http://localhost/docs" \
    PUBLIC="./public/docs" \
    LOOP=false \
    ./build.sh

cd ..
docker-compose up
