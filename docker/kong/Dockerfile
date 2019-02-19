FROM alpine:3.6
LABEL maintainer="Kong Core Team <team-core@konghq.com>"

ENV KONG_VERSION 1.0.3
ENV KONG_SHA256 b33a9eb920316a09b511a67d91f93e489336a9f81ac14f9040e5fe4d055e9148

RUN adduser -Su 1337 kong \
    && mkdir -p "/usr/local/kong" \
    && apk add --no-cache --virtual .build-deps wget tar ca-certificates \
    && apk add --no-cache libgcc openssl pcre perl tzdata curl libcap su-exec \
    && apk del .build-deps

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh


ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 8000 8443 8001 8444

STOPSIGNAL SIGTERM

CMD ["kong", "docker-start"]

