FROM alpine:3.5
MAINTAINER LasLabs Inc. <support@laslabs.com>

COPY ./docker-entrypoint.sh /docker-entrypoint.sh

# Trigger a lint error
RUN apk add --no-cache curl wget

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["cat"]
