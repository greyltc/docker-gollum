# Arch Linux container with gollum wiki server
FROM greyltc/archlinux
MAINTAINER Grey Christoforo <grey@christoforo.net>

# install gollum
ADD setup-gollum.sh /usr/sbin/setup-gollum
RUN setup-gollum

ENV GOLLUM_OPTS=""

ADD start-gollum.sh /usr/bin/start-gollum

VOLUME /root/wiki

EXPOSE 4567

CMD start-gollum && sleep infinity
