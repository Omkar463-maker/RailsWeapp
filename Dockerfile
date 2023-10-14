FROM ruby:3.2.2 as base

WORKDIR /app

RUN gem install bundler

COPY Gemfile* ./

RUN bundle install

ADD . /app

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
