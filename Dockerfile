FROM ruby:2.7.2

RUN apt-get update

WORKDIR /touch_p

ADD . /touch_p

RUN bundle install