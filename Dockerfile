FROM ruby:3.2.2 as base

RUN apt-get update -qq && apt-get install -y build essentail apt-utils

WORKDIR /app

RUN gem install bundler

COPY Gemfile* ./

RUN bundle install

ADD . /app

ARG DEFAULT_PORT 3000

EXPOSE ${DEFAULT_PORT}

CMD ["rails","server"]
