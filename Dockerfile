FROM ubuntu:18.04
MAINTAINER zhang
ENV REFRESHED_AT 20200807

RUN apt-get update
RUN apt-get -y install go
RUN gem install --no-rdoc --no-ri rspec ci_reporter_rspec

