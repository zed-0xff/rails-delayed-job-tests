FROM ruby:2.6.8

ENV BUNDLE_AUTO_INSTALL="true"
RUN apt-get update && \
    apt-get install -y --no-install-recommends lsb-release && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    gem install bundler:1.17.3

WORKDIR /app
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
