FROM golang:alpine
MAINTAINER LasLabs Inc <support@laslabs.com>

# Make sure to use --no-cache.
RUN apk add --no-cache --virtual .build-deps \
    build-base \
    python-dev

RUN apk add --no-cache python

# Do stuff involving the build dependencies
RUN echo "Stuff"

# Remove build dependencies
RUN apk del .build-deps

# Copy and define entrypoint
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

# This typically exposes the service that the container is responsible for.
CMD ["python"]
