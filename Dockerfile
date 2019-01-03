FROM agrozyme/alpine:edge

RUN set -euxo pipefail \
  && apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing logstash

CMD ["/usr/share/logstash/bin/logstash"]
