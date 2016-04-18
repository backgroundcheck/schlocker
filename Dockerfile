FROM ruby
MAINTAINER Friedrich Lindenberg <pudo@occrp.org>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -qq && apt-get install -y -q libmagic-dev libgpgme11-dev wget git git-core
RUN git clone https://git.codecoop.org/schleuder/schleuder3.git && cd schleuder-conf && bundle install
RUN git clone https://git.codecoop.org/schleuder/schleuder-conf.git && cd schleuder-conf && bundle install 
# RUN git clone https://git.codecoop.org/schleuder/webschleuder3.git && cd schleuder-conf \
#    && bundle install --without development
#    && cd /webschleuder && bin/setup
#    && cp -R /webschleuder/config /webschleuder/config.tmpl



