#!/usr/bin/env bash

pacman -S --needed --noconfirm base-devel ruby git
#echo "PATH=$(ruby -e 'print Gem.user_dir')/bin:"'$PATH' > /etc/profile.d/ruby.sh
#echo "export PATH" >> /etc/profile.d/ruby.sh
#chmod +x /etc/profile.d/ruby.sh
#source /etc/profile.d/ruby.sh

gem install gollum --no-user-install

#mkdir /root/wiki
#cd /root/wiki
#git init
