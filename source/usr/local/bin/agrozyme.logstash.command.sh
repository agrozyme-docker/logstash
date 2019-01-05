#!/bin/bash
set -euo pipefail

function main() {
  agrozyme.alpine.function.sh change_core
  chown -R core:core /var/log/logstash /var/lib/logstash
  exec su-exec core /usr/share/logstash/bin/logstash
}

main "$@"
