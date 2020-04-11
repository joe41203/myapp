FROM ruby:2.6.6-alpine

ENV TZ=Asia/Tokyo

RUN mkdir -p /backend/
WORKDIR /backend

RUN apk update && \
  apk add --no-cache tzdata libxml2-dev curl-dev make gcc libc-dev g++ mysql-client mysql-dev bash vim

ADD . /backend

RUN gem install bundler:1.17.2 && bundle install

ENV HOST 0.0.0.0
EXPOSE 3000

CMD [ "bundle", "exec", "rails", "s" ]
