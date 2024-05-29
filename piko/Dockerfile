FROM alpine:3.20.0
# FROM debian:11.8

ARG APP_VERSION=0.1.0

RUN apk add gcompat

# RUN apt-get update && \
#     apt-get install -y wget curl procps lsof net-tools && \
# 	rm -rf /var/lib/apt/lists/*

WORKDIR /app/

ADD install.sh .

RUN sh install.sh "${APP_VERSION}"

ENTRYPOINT [ "/app/piko" ]
