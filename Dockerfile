FROM ubuntu
MAINTAINER Brandon R. Stoner <monokrome@monokro.me>

RUN sudo add-apt-repository ppa:ubuntu-wine/ppa && apt-get update -y && apt-get install -y wine1.6
