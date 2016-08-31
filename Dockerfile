FROM golang:1.4.1

# Ref: https://github.com/fluent/fluentd-forwarder
# TODO: Clone to private gitlab

RUN \
  go get github.com/fluent/fluentd-forwarder/entrypoints/build_fluentd_forwarder && \
  bin/build_fluentd_forwarder fluentd_forwarder

CMD ["/bin/bash"]
