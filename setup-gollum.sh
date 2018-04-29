#!/usr/bin/env bash
set -e -u -o pipefail

# install base-devel without systemd
pkgs=$(pacman -S base-devel --print-format '%n ');pkgs=${pkgs//systemd/};pkgs=${pkgs//$'\n'/}
pacman -S --needed --noprogressbar --noconfirm $pkgs ruby git mpfr ruby-rdoc

echo "PATH=$(ruby -e 'print Gem.user_dir')/bin:"'$PATH' > /etc/profile.d/ruby.sh
echo "export PATH" >> /etc/profile.d/ruby.sh
chmod +x /etc/profile.d/ruby.sh
source /etc/profile.d/ruby.sh

#gem install gollum --no-user-install
gem install github-markdown
gem install gollum

#mkdir /root/wiki
#cd /root/wiki
#git init
