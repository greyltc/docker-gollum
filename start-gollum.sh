#!/usr/bin/env sh

$(ruby -e 'print Gem.user_dir')/bin/gollum ${GOLLUM_OPTS} /root/wiki&
