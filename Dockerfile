FROM ubuntu
MAINTAINER Brandon R. Stoner <monokrome@monokro.me>

RUN apt-get install -y python-software-properties && add-apt-repository -y ppa:ubuntu-wine/ppa
RUN sed -i 's/main/main universe/' /etc/apt/sources.list && apt-get update -y

RUN cat /etc/apt/sources.list
RUN apt-get install -y wine1.7

RUN apt-get purge -y python-software-properties
RUN apt-get autoclean -y
