# Dockerfile

FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION v0.79.0

RUN curl -sL https://github.com/gohugoio/hugo/releases/download/v0.58.3/hugo_0.58.3_Linux-64bit.tar.gz | tar xz && \
    mv hugo /usr/local/bin/hugo

ENTRYPOINT ["bash"]
