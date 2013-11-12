FROM ubuntu
MAINTAINER Brandon R. Stoner <monokrome@monokro.me>

RUN sudo add-apt-repository ppa:ubuntu-wine/ppa && apt-get update && apt-get install wine1.5
