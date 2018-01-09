FROM alpine
MAINTAINER Bailey Stoner <monokrome@monokro.me>

RUN apk update
RUN apk add wine xvfb


ADD bin/* /usr/local/bin/


# Prefix commands passed into bash so that they run in xvfb
ENTRYPOINT xvfb-run -a wine
