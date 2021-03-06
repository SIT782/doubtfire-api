FROM ruby:2.1.2

RUN apt-get update
RUN apt-get install -y \
  build-essential \
  libpq-dev imagemagick \
  libmagickwand-dev \
  libmagic-dev \
  pdftk \
  libpq-dev \
  python-pygments

ADD . /doubtfire-api
WORKDIR /doubtfire-api

EXPOSE 3000

RUN bundle install --without production test replica
