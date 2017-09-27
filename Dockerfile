# Arch Linux container with gollum wiki server
FROM greyltc/archlinux
MAINTAINER Grey Christoforo <grey@christoforo.net>

# install gollum
ADD setup-gollum.sh /usr/sbin/setup-gollum
RUN setup-gollum

ADD run-gollum.sh /usr/bin/run-gollum

VOLUME /root/wiki

EXPOSE 80

CMD run-gollum && sleep infinity