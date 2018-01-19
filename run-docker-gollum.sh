#!/usr/bin/env bash
docker stop gollum
docker rm gollum
docker pull greyltc/gollum
docker run \
  --detach=true \
  --restart='always' \
  --name gollum \
  --publish 80:80 \
#  --publish 443:443 \
  --mount type=bind,source="~/wiki",target=/root/wiki \
  greyltc/gollum
