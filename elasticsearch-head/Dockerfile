FROM nginx:1.22.0 as build
WORKDIR /app
ADD https://github.com/mobz/elasticsearch-head/archive/refs/heads/master.tar.gz /app/
RUN tar zxvf master.tar.gz

FROM nginx:1.22.0
COPY --from=build /app/elasticsearch-head-master/_site /usr/share/nginx/html/
COPY docker/images/runtime/entrypoint.sh /bin

ENTRYPOINT [ "/bin/entrypoint.sh" ]