FROM ubuntu:16.04

RUN apt-get update && apt-get install -y ruby
RUN gem install bundler

RUN useradd -m -u 1000 app
RUN apt install -y ssh
USER app
