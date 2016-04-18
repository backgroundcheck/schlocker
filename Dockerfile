FROM ruby
MAINTAINER Friedrich Lindenberg <pudo@occrp.org>
ENV DEBIAN_FRONTEND noninteractive

# RUN apt-get update -qq && apt-get install -y -q libmagic-dev libgpgme11-dev \
#  ruby1.8 vim git git-core rubygems ruby1.8-dev libgpg-error-dev
RUN apt-get update -qq && apt-get install -y -q libmagic-dev libgpgme11-dev wget git git-core
RUN wget https://schleuder.nadir.org/download/schleuder-3.0.0.beta2.gem
RUN gem install --no-user-install schleuder-3.0.0.beta2.gem
RUN git clone https://git.codecoop.org/schleuder/schleuder-conf.git && cd schleuder-conf && bundle install

# RUN gem install gpgme -v 1.0.8 && gem install highline -v 1.6.1 && gem install log4r -v 1.1.9 && gem install ruby-filemagic -v 0.4.2
# RUN gem install schleuder
# RUN schleuder-fix-gem-dependencies

