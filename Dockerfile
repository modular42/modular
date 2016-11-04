FROM ruby:2.3.1

RUN apt-get update && apt-get install -y nodejs netcat

WORKDIR /usr/src/app
