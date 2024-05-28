# FROM alpine:3.20.0
FROM debian:11.8

ARG APP_VERSION=0.1.0

WORKDIR /app/

ADD install.sh .

RUN sh install.sh "${APP_VERSION}"

ENTRYPOINT [ "/app/piko" ]
