FROM ruby:2.4

WORKDIR /app

COPY Gemfile ./
RUN bundle install

COPY . .

CMD ["bundle", "exec", "rails", "s"]