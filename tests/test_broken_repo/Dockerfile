FROM alpine:3.7

COPY ./docker-entrypoint.sh /docker-entrypoint.sh

# Trigger a lint error
RUN apk add --no-cache curl wget

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["cat"]

LABEL maintainer="LasLabs Inc <support@laslabs.com>"
