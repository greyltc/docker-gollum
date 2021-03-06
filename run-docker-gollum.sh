#!/usr/bin/env bash
docker stop gollum
docker rm gollum
docker pull greyltc/gollum
docker run \
  --detach=true \
  --restart='always' \
  --name gollum \
  --env GOLLUM_OPTS='--bare --allow-uploads dir --show-all' \
  --publish 4567:4567 \
  --mount type=bind,source="$HOME/wiki",target=/root/wiki \
  --tty=false \
  --interactive=false \
  greyltc/gollum
