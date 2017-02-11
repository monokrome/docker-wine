FROM alpine
MAINTAINER Bailey Stoner <monokrome@monokro.me>

# Install wine and xvfb.
RUN apk update
RUN apk add wine xvfb


# Install winetricks because it's helpful. <3
ADD bin/winetricks /usr/local/bin/winetricks
ADD bin/xvfb-run /usr/local/bin/xvfb-run


# Prefix commands passed into bash so that they run in xvfb
ENTRYPOINT xvfb-run -a wine
