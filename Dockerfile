FROM ubuntu
MAINTAINER Brandon R. Stoner <monokrome@monokro.me>

ADD install_wine.sh /tmp/install_wine.sh
RUN /tmp/install_wine.sh && rm /tmp/install_wine.sh

