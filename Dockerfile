FROM ruby:3.1.2

ENV BUNDLE_AUTO_INSTALL="true"
RUN apt-get update && \
    apt-get install -y --no-install-recommends lsb-release less nodejs npm vim-nox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN npm install --global yarn

WORKDIR /app
#COPY Gemfile .
#COPY Gemfile.lock .
#RUN bundle install

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
