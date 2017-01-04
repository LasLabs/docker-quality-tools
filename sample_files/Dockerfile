FROM golang:alpine
MAINTAINER LasLabs Inc <support@laslabs.com>

# Install Build Dependencies & Application
ENV BUILD_DEPS="build-base \
                python-dev"

# Make sure to use --no-cache.
RUN apk add --no-cache "$BUILD_DEPS" \
                       python

# Do stuff involving the build dependencies
RUN echo "$BUILD_DEPS"

# Remove build dependencies
RUN apk del "$BUILD_DEPS"

# Copy and define entrypoint
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

# This typically exposes the service that the container is responsible for.
CMD ["python"]
