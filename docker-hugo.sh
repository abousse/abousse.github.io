#!/bin/bash

docker run --rm --entrypoint hugo -v $PWD:/mydata:z -w /mydata -p 127.0.0.1:1313:1313 docker.io/klakegg/hugo:0.84.1-ext-alpine-ci $*


