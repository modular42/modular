#!/usr/bin/env bash

# ensure bundler is present
gem install bundler

# install dependencies and clean old ones at the same time
bundle install --clean

# make sure Postgres is available
until nc -z postgres 5432; do echo Waiting for Posgres; sleep 1; done

bundle exec rake db:setup
bundle exec rspec -fd
