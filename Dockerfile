FROM rsrchboy/gitolite-base:latest
MAINTAINER Chris Weyl <chris.weyl@wps.io>

# builds FROM this one will do the full install.
ONBUILD WORKDIR /srv/git
ONBUILD ADD admin.pub .
ONBUILD RUN su git -c "./bin/gitolite setup -pk admin.pub"
