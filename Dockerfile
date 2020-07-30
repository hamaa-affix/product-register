FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn 

WORKDIR /docker_railes
COPY Gemfile Gemfile.lock  /docker_railes/
RUN bundle install

