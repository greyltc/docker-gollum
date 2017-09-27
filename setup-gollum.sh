#!/usr/bin/env bash

pacman -S --needed --noconfirm base-devel ruby git
gem install gollum
echo "PATH=$(ruby -e 'print Gem.user_dir')/bin:"'$PATH' > /etc/profile.d/ruby.sh
mkdir /root/wiki
cd /root/wiki
git init
