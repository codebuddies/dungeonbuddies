FROM starefossen/ruby-node:2-10-slim
MAINTAINER Angelo Cordon <angelocordon@gmail.com>

# It is usually a best practice to put most of those commands together in one
# line to avoid layers within the image.
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
RUN apt-get update -qq \
    && apt-get install -y \
    build-essential \
    libpq-dev \
    && gem install bundler \
    && apt-get -q clean \
    && rm -rf /var/lib/apt/lists

WORKDIR /usr/src/app

COPY Gemfile* yarn.lock /usr/src/app/
RUN bundle install
COPY . /usr/src/app

ENV YARN_INTEGRITY_ENABLED 'false'
RUN yarn install && yarn check --integrity
