#!/usr/bin/env bash
docker stop gollum
docker rm gollum
docker pull greyltc/gollum
docker run \
  --detach=true \
  --restart='always' \
  --name gollum \
  --publish 4567:4567 \
  --mount type=bind,source="~/wiki",target=/root/wiki \
  greyltc/gollum
