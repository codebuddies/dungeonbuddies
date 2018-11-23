FROM starefossen/ruby-node:2-10-slim
MAINTAINER Angelo Cordon <angelocordon@gmail.com>

# It is usually a best practice to put most of those commands together in one
# line to avoid layers within the image.
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/
RUN apt-get update -qq && \
    apt-get install -y vim build-essential libpq-dev && \
    gem install bundler

RUN mkdir /dungeonbuddies
COPY Gemfile Gemfile.lock /dungeonbuddies/
WORKDIR /dungeonbuddies
RUN bundle install
COPY . /dungeonbuddies
