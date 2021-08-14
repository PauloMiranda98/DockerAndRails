FROM ruby:2.7.2

RUN apt-get update && apt-get install -y build-essential libpq-dev nodejs git-core curl zlib1g-dev libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev

RUN mkdir /app

WORKDIR /app

ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock

RUN gem update --system

RUN gem install bundler -v 2.2.21

RUN bundle install

ADD . /app
