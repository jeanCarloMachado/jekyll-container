FROM alpine:3.5

RUN apk update  \
    && apk add alpine-sdk \
    && apk add ruby \
    && apk add ruby-dev \
    && apk add ruby-io-console \
    && apk add ruby-rdoc \
    && apk add ruby-irb \
    && apk add build-base libffi-dev \
    && gem install bundler \
    && gem install jekyll \
    && mkdir /build

WORKDIR /build
ENTRYPOINT jekyll
CMD build


