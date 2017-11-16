FROM ruby:2.3.3

LABEL maintainer="andrew@andrew-jones.com"

ENV VERSION=0.10.0

EXPOSE 21000

RUN mkdir /app \
    && curl -sL https://github.com/salsify/avro-schema-registry/archive/v${VERSION}.tar.gz | tar xzC /app/

WORKDIR /app/avro-schema-registry-${VERSION}
RUN bundle install

CMD ["bundle", "exec", "rails", "s", "-p", "21000", "-b", "0.0.0.0"]
