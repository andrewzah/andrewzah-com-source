FROM golang:1.16-alpine AS builder

WORKDIR /

RUN apk add --no-cache --virtual .build-deps libc-dev gcc g++ git \
  && git clone https://github.com/gohugoio/hugo.git \
  && cd hugo \
  && go install --tags extended

RUN apk add --no-cache --virtual .build-deps2 \
    ruby ruby-json \
  && gem install asciidoctor asciidoctor-html5s asciidoctor-diagram rouge

COPY ./ /build/
WORKDIR /build

RUN hugo \
  && cp -r ./public/ /dist/ \
  && apk del .build-deps .build-deps2

FROM caddy:2.1.1-alpine

COPY ./Caddyfile /etc/caddy/Caddyfile
COPY --from=builder /dist/ /var/www/

EXPOSE 2020
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
