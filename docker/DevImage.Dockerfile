FROM alpine:3.10

COPY ./test-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
