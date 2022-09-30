FROM eclipse-temurin:8-jdk

ARG APP_VERSION=2.23.18

# COPY docker/images/runtime/entrypoint.sh /bin
WORKDIR /app/

# RUN https://search.maven.org/remote_content?g=io.zipkin&a=zipkin-server&v=LATEST&c=exec
RUN curl -sSL https://zipkin.io/quickstart.sh | bash -s io.zipkin:zipkin-server:$APP_VERSION:exec zipkin.jar


# ENTRYPOINT [ "/bin/entrypoint.sh" ]
CMD java -jar zipkin.jar
