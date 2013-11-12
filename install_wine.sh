#!/usr/bin/env sh

apt-get install -y python-software-properties

add-apt-repository -y ppa:ubuntu-wine/ppa
apt-get update -y

apt-get install -y wine1.7 winetricks
apt-get install -y xvfb

apt-get purge -y python-software-properties
apt-get autoclean -y
