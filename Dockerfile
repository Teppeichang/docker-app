FROM ruby:2.7
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn

WORKDIR /documents/docker-app
COPY Gemfile Gemfile.lock /documents/docker-app/
RUN bundle install

