FROM ubuntu
MAINTAINER Brandon R. Stoner <monokrome@monokro.me>

# NOTE: Any wine commands should be routed through xvfb. This will emulate an X
# server, so that wine will not complain about not being able to find an X
# server. An example command might be:
#
#   xvfb-run -a wine Example.exe

RUN apt-get install -y python-software-properties && add-apt-repository -y ppa:ubuntu-wine/ppa && apt-get update -y
RUN apt-get install -y wine1.6 xvfb
RUN apt-get purge -y python-software-properties && apt-get autoclean -y
